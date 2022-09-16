. /home/pi/bootloader/config/station.config
StationDashboardURL="$CoreProtocol://$CoreAddress:$CorePort/#/operator/$StationID"

chromium-browser --incognito $StationDashboardURL
#echo $StationDashboardURL