. /home/pi/bootloader/config/station.config
StationDashboardURL="$CoreProtocol://$CoreAddress:$CorePort/#/operator/$StationID"

chromium-browser --start-fullscreen --start-maximized --kiosk --incognito $StationDashboardURL 
python3 /home/pi/rpi-power-monitor/power-monitor.py terminal
#echo $StationDashboardURL