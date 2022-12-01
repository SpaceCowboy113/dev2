#!/bin/bash
#
# Usage: post-startup.sh
#
# Description: Run user-defined processes to perform steps that are to be
# executed after the default environment is started.
#
# Initially this script is empty.
# The user is responsible for exiting this routine with a result indicating
# Success (0) or Failure (1).
#
# Local System Support Scripts

echo "Starting post-startup process ..."
 
typeset ENV_LOCATION="/dr01/qadapps/systest"
typeset YAB_LOG="${ENV_LOCATION}/build/logs/yab.log"
typeset EMAIL="ji9@qad.com"
typeset yab="/dr01/qadapps/yab/yab -notify.animated:false -a:${ENV_LOCATION}"
 
# Flag to run update regardless of schedule
ignoreSchedule=false
 
# Parse arguments
for arg in "$@"
do
    index=$(echo $arg | cut -f1 -d:)
    val=$(echo $arg | cut -f2 -d:)
    case $index in
        -f|--force)
            ignoreSchedule=true
            ;;
    esac
done

# Start installation service
${yab} module-installation-service-update tomcat-installation-service-start
 
# Open ports for progress debugging
sudo iptables -I INPUT -p tcp -m tcp --dport 3099 -j ACCEPT
 
# Run morning update (only before 7:30)
if [[ "$(date +%H:%M)" < "07:30" || ${ignoreSchedule} == true ]]; then
    ${yab} clean
 
    ${yab} info -all | grep new | mail -s "Morning update - "$(hostname) ${EMAIL}
 
    ${yab} update
    result=$?
    if [[ $result -ne 0 ]]; then
        # Retry update once (for recurring issues like kafka-default-topic-update)
        tail -n 100 ${YAB_LOG} | mail -s $(hostname)" Update failed; retrying once..." ${EMAIL}
         
        ${yab} update
        result=$?
        if [[ $result -ne 0 ]]; then
            tail -n 100 ${YAB_LOG} | mail -s $(hostname)" 2nd update failed too" ${EMAIL}
            exit 0 # Exit with success to not impact PC4
        fi
        mail -s $(hostname)" 2nd update was successful" ${EMAIL}
    fi
fi

