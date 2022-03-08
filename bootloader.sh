mkdir /home/pi/bltmp
mv /home/pi/bootloader/config/* /home/pi/bltmp
rm -rf /home/pi/bootloader
git clone https://github.com/UpSystemsSolutions/CL1747190099-Galactic-StationBootloader.git /home/pi/bootloarder
mv /home/pi/bltmp/* /home/pi/bootloader/config

bash /home/pi/bootloader/bootGalacticStation.sh