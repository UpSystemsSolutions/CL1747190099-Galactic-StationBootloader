mkdir /home/pi/bltmp
mv /home/pi/bootloarder/config/* /home/pi/bltmp
rm -rf /home/pi/bootloarder
git clone https://github.com/UpSystemsSolutions/CL1747190099-Galactic-StationBootloader.git /home/pi/bootloarder
mv /home/pi/bltmp/* /home/pi/bootloarder/config

bash /home/pi/bootloarder/bootGalacticStation.sh