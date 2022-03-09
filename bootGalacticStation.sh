. /home/pi/bootloader/config/station.config
StationDashboardURL="$CoreProtocol://$CoreAddress:$CorePort/#/operator/$StationID"

firefox --kiosk $StationDashboardURL
#echo $StationDashboardURL