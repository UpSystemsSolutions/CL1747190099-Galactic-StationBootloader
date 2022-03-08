. /home/pi/bootloader/config/station.config
StationDashboardURL=$CoreProtocol://$CoreAddress:$CorePort/Station-main/$StationID

firefox --kiosk $StationDashboardURL
#echo $StationDashboardURL