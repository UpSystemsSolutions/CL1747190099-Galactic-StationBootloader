TEMP=/home/pi/bootloaderTMP
CURRENT=/home/pi/bootloader
AUTOSTART_HOME=/home/pi/bootloader/autostart
AUTOSTART_DEST=/home/pi/.config/lxsession/LXDE-pi/autostart
RESET_HOME=/home/pi/bootloader/bootloader.sh
RESET_DEST=/home/pi/Desktop/Reset-Station.sh
STARTER=/home/pi/bootloader/bootGalacticStation.sh
CONFIG_LIVE=/home/pi/bootloader/config/*

echo "Cleaning up temp files"
rm -rfv $TEMP

echo "downloading updated code to temp"
git clone -b prod https://github.com/UpSystemsSolutions/CL1747190099-Galactic-StationBootloader.git $TEMP

echo "check if download was successfull"


if [ -d "$TEMP" ]; then
    echo "$TEMP exists."

    echo "Moving the config files to the temporary workspace"
    cp -v $CONFIG_LIVE $TEMP/config

    echo "Moving the new bootloader to the place"
    cp -rv $TEMP/* $CURRENT

    echo "Updating AutoStart File "
    cp -v $AUTOSTART_HOME $AUTOSTART_DEST

    echo "Updating reset script"
    cp -v $RESET_HOME $RESET_DEST

    echo "Run Bootscript"
    bash $STARTER

    echo "Removing temp files"
    rm -rfv $TEMP
    
else 
    echo "$TEMP does not exist."
fi
