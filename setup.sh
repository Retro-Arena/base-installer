#!/usr/bin/env bash

# This file is part of The RetroArena (TheRA)
#
# The RetroArena (TheRA) is the legal property of its developers, whose names are
# too numerous to list here. Please refer to the COPYRIGHT.md file distributed with this source.
#
# See the LICENSE.md file at the top-level directory of this distribution and
# at https://raw.githubusercontent.com/Retro-Arena/RetroArena-Setup/master/LICENSE.md
#

rp_module_id="setup"
rp_module_desc="GUI based setup for RetroArena"
rp_module_section=""

function rps_logInit() {
    if [[ ! -d "$__logdir" ]]; then
        if mkdir -p "$__logdir"; then
            chown $user:$user "$__logdir"
        else
            fatalError "Couldn't make directory $__logdir"
        fi
    fi
    local now=$(date +'%Y-%m-%d_%H%M%S')
    logfilename="$__logdir/rps_$now.log.gz"
    touch "$logfilename"
    chown $user:$user "$logfilename"
    time_start=$(date +"%s")
}

function rps_logStart() {
    echo -e "Log started at: $(date -d @$time_start)\n"
    echo "RetroArena-Setup version: $__version ($(git -C "$scriptdir" log -1 --pretty=format:%h))"
    echo "System: $(uname -a)"
}

function rps_logEnd() {
    time_end=$(date +"%s")
    echo
    echo "Log ended at: $(date -d @$time_end)"
    date_total=$((time_end-time_start))
    local hours=$((date_total / 60 / 60 % 24))
    local mins=$((date_total / 60 % 60))
    local secs=$((date_total % 60))
    echo "Total running time: $hours hours, $mins mins, $secs secs"
}

function rps_printInfo() {
    reset
    if [[ ${#__ERRMSGS[@]} -gt 0 ]]; then
        printMsgs "dialog" "${__ERRMSGS[@]}"
        printMsgs "dialog" "Please see $1 for more in depth information regarding the errors."
    fi
    if [[ ${#__INFMSGS[@]} -gt 0 ]]; then
        printMsgs "dialog" "${__INFMSGS[@]}"
    fi
}


function post_update_setup() {
    local return_func=("$@")

    printMsgs "dialog" "ATTENTION:\nThis is a BETA build with the intention to allow for pre Public Release trials and feedback. Due to the nature of the fact that this is a closed Beta it does not have the ability to be updated. There are various reasons for this however the largest one is that the base OS is provided by Pine and future releases will be fresh builds as they have plans to provide an entirely new OS base prior to full Public Release.\nWe will not be technically supporting this Beta from a troubleshooting perspective however constructive feedback would be appreciated via our github at https://github.com/Retro-Arena/RetroArena-Setup. Please be sure to let us know that you are submitting for the beta.\n\nThank you and we hope you enjoy the Preview!\n\nNo copyrighted gamees are included with RetroArena.\n\nIf you have been sold this software, you can let us know about it by emailing therealretroarena@outlook.com"

    # return to set return function
    "${return_func[@]}"
}


function uninstall_setup()
{
    dialog --defaultno --yesno "Are you sure you want to uninstall RetroArena?" 22 76 2>&1 >/dev/tty || return 0
    dialog --defaultno --yesno "Are you REALLY sure you want to uninstall RetroArena?\n\n$rootdir will be removed - this includes configuration files for all RetroArena components." 22 76 2>&1 >/dev/tty || return 0
    clear
    printHeading "Uninstalling RetroArena"
    for idx in "${__mod_idx[@]}"; do
        rp_isInstalled "$idx" && rp_callModule $idx remove
    done
    rm -rfv "$rootdir"
    dialog --defaultno --yesno "Do you want to remove all the files from $datadir - this includes all your installed ROMs, BIOS files and custom splashscreens." 22 76 2>&1 >/dev/tty && rm -rfv "$datadir"
    if dialog --defaultno --yesno "Do you want to remove all the system packages that RetroArena depends on? \n\nWARNING: this will remove packages like SDL even if they were installed before you installed RetroArena - it will also remove any package configurations - such as those in /etc/samba for Samba.\n\nIf unsure choose No (selected by default)." 22 76 2>&1 >/dev/tty; then
        clear
        # remove all dependencies
        for idx in "${__mod_idx[@]}"; do
            rp_isInstalled "$idx" && rp_callModule "$idx" depends remove
        done
    fi
    printMsgs "dialog" "RetroArena has been uninstalled."
}

function reboot_setup()
{
    clear
    reboot
}

function config_gui_setup() {
    local default
    while true; do
        local options=()
        local idx
        for idx in "${__mod_idx[@]}"; do
            # show all configuration modules and any installed packages with a gui function
            if [[ "${__mod_section[idx]}" == "config" ]] || rp_isInstalled "$idx" && fnExists "gui_${__mod_id[idx]}"; then
                options+=("$idx" "${__mod_id[$idx]}  - ${__mod_desc[$idx]}" "$idx ${__mod_desc[$idx]}")
            fi
        done

        local cmd=(dialog --backtitle "$__backtitle" --cancel-label "Back" --item-help --help-button --default-item "$default" --menu "Choose an option" 22 76 16)

        local choice=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
        [[ -z "$choice" ]] && break
        if [[ "${choice[@]:0:4}" == "HELP" ]]; then
            choice="${choice[@]:5}"
            default="${choice/%\ */}"
            choice="${choice#* }"
            printMsgs "dialog" "$choice"
            continue
        fi

        [[ -z "$choice" ]] && break

        default="$choice"

        local logfilename
        __ERRMSGS=()
        __INFMSGS=()
        rps_logInit
        {
            rps_logStart
            if fnExists "gui_${__mod_id[choice]}"; then
                rp_callModule "$choice" depends
                rp_callModule "$choice" gui
            else
                rp_callModule "$idx" clean
                rp_callModule "$choice"
            fi
            rps_logEnd
        } &> >(tee >(gzip --stdout >"$logfilename"))
        rps_printInfo "$logfilename"
    done
}

# RetroArena-Setup main menu
function gui_setup() {
    post_update_setup
    joy2keyStart
    local default
    while true; do
        local commit=$(git -C "$scriptdir" log -1 --pretty=format:"%cr (%h)")

        cmd=(dialog --backtitle "$__backtitle" --title "RetroArena-Setup Script" --cancel-label "Exit" --item-help --help-button --default-item "$default" --menu "Version: $__version\nLast Commit: $commit" 22 76 16)
        options=(
            S "Settings"
            "S Configure settings. Any packages you have installed that have additional configuration options will also appear here."

            U "Uninstall"
            "U Uninstall RetroArena."

            R "Reboot"
            "R Reboot your machine."
        )

        choice=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
        [[ -z "$choice" ]] && break

        if [[ "${choice[@]:0:3}" == "HELP" ]]; then
            choice="${choice[@]:4}"
            default="${choice/%\ */}"
            choice="${choice#* }"
            printMsgs "dialog" "$choice"
            continue
        fi
        default="$choice"

        case "$choice" in
            S)
                config_gui_setup
                ;;
            U)
                uninstall_setup
                ;;
            R)
                dialog --defaultno --yesno "Are you sure you want to reboot?\n\nNote that if you reboot when Emulation Station is running, you will lose any metadata changes." 22 76 2>&1 >/dev/tty || continue
                reboot_setup
                ;;
        esac
    done
    joy2keyStop
    clear
}
