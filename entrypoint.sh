#! /usr/bin/env bash
set -e

function main() {
    # echo argc: "$#"
    # echo argv: "$@"

    if [[ $# -eq 0 ]]; then
        printf "\nHello World!\n"
        printf "You see this because no command was specified!\n"
    else
        /bin/bash -c "${1}"
    fi
}

# Get the stat time
time_start=$(date)

# Run main entrypoint
main "$@"

# Footer
time_finish=$(date)
echo
echo "::set-output name=time_start::$time_start"
echo "::set-output name=time_finish::$time_finish"
