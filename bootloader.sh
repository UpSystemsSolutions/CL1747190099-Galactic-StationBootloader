echo Creating temporary workspace
mkdir /home/pi/bltmp
echo Operation Completed

echo Moving the config files to the temporary workspace
mv /home/pi/bootloader/config/* /home/pi/bltmp
echo Operation Completed

echo Removing the old code
rm -rf /home/pi/bootloader
echo Operation Completed

echo downloading updated code
git clone https://github.com/UpSystemsSolutions/CL1747190099-Galactic-StationBootloader.git /home/pi/bootloarder
echo Operation Completed

echo Moving the config files from the temporary workspace to the update bootloader workspace
mv /home/pi/bltmp/* /home/pi/bootloader/config
echo Operation Completed

echo Cleaning up...
rm -rf /home/pi/bltmp
echo Operation Completed

echo Run the boot script
bash /home/pi/bootloader/bootGalacticStation.sh
echo Operation Completed