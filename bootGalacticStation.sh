. /home/pi/bootloader/config/station.config
StationDashboardURL="$CoreProtocol://$CoreAddress:$CorePort/#/operator/$StationID"

firefox $StationDashboardURL
#echo $StationDashboardURL