echo Creating temporary workspace
mkdir /home/pi/bltmp
echo Operation Completed

echo ------------------------------------------------------------

echo Moving the config files to the temporary workspace
mv /home/pi/bootloader/config/* /home/pi/bltmp
echo Operation Completed

echo ------------------------------------------------------------

echo Removing the old code
rm -rf /home/pi/bootloader
echo Operation Completed

echo ------------------------------------------------------------

echo downloading updated code
git clone https://github.com/UpSystemsSolutions/CL1747190099-Galactic-StationBootloader.git /home/pi/bootloader
echo Operation Completed

echo ------------------------------------------------------------

echo Moving the config files from the temporary workspace to the update bootloader workspace
mv /home/pi/bltmp/* /home/pi/bootloader/config
echo Operation Completed

echo ------------------------------------------------------------

echo Cleaning up...
rm -rf /home/pi/bltmp
echo Operation Completed

echo ------------------------------------------------------------

echo Updating the autostart code
mv /home/pi/bootloader/autostart /home/pi/.config/lxsession/LXDE-pi/autostart
echo Operation Completed

echo ------------------------------------------------------------

echo Updating the Reset-Station.sh Script
cp /home/pi/bootloader/bootloader.sh /home/pi/Desktop/Reset-Station.sh
echo Operation Completed

echo ------------------------------------------------------------

echo Run the boot script
bash /home/pi/bootloader/bootGalacticStation.sh
echo Operation Completed