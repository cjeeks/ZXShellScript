#Author：Issac Lin
#Ext: 7536
#version:1.1
#EMMC_copy-compare_test
#part of different_storage_copy-compare_test
#

path=$(pwd)
sd_stat=$1
usb_stat=$2
#emmc to emmc
echo "////////////////////////////////"
echo "////////////////////////////////" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
echo "start emmc to emmc test|copy $path/CPFILE folder to /sdcard"
echo "start emmc to emmc test|copy $path/CPFILE folder to /sdcard" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
date
date >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
(time cp -rf CPFILE /sdcard) 2>> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
if test $? -eq 0
then
	echo "finish copy $path/CPFILE folder to /sdcard"
	echo "finish copy $path/CPFILE folder to /sdcard" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
else
	echo "error when copy $path/CPFILE folder to /sdcard"
	echo "error when copy $path/CPFILE folder to /sdcard" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
fi
date
date >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
echo "start compare $path/CPFILE and /sdcard/CPFILE"
echo "start compare $path/CPFILE and /sdcard/CPFILE" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
date
date >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
(time diff -qr CPFILE /sdcard/CPFILE) 2>> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
if test $? -eq 0
then
	echo "pass:compare $path/CPFILE and /sdcard/CPFILE"
	echo "pass:compare $path/CPFILE and /sdcard/CPFILE" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
else
	echo "fail:compare $path/CPFILE and /sdcard/CPFILE"
	echo "fail:compare $path/CPFILE and /sdcard/CPFILE" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
fi
date
date >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
#wait user to play video
echo "***Please make sure that video at /sdcard/CPFILE can play normally***"
echo "***Please make sure that video at /sdcard/CPFILE can play normally***" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
echo "***wait for check video play at /sdcard/CPFILE ,press any key to continue***"
echo "***wait for check video play at /sdcard/CPFILE ,press any key to continue***" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
read -n 1
echo "***continue test***"
echo "***continue test***" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
date
date >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
echo "finish emmc to emmc test"
echo "finish emmc to emmc test" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
#emmc to SD
echo "////////////////////////////////"
echo "////////////////////////////////" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
if test sd_stat -eq 1
then
	echo "start emmc to SD test|copy $path/CPFILE folder to /storage/extsdcard"
	echo "start emmc to SD test|copy $path/CPFILE folder to /storage/extsdcard" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	date
	date >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	(time cp -rf CPFILE /storage/extsdcard) 2>> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log

	if test $? -eq 0
	then
		echo "finish copy $path/CPFILE folder to /storage/extsdcard"
		echo "finish copy $path/CPFILE folder to /storage/extsdcard" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	else
		echo "error when copy $path/CPFILE folder to /storage/extsdcard"
		echo "error when copy $path/CPFILE folder to /storage/extsdcard" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	fi
	date
	date >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	echo "start compare $path/CPFILE and /storage/extsdcard/CPFILE"
	echo "start compare $path/CPFILE and /storage/extsdcard/CPFILE" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	date
	date >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	(time diff -qr CPFILE /storage/extsdcard/CPFILE) 2>> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	if test $? -eq 0
	then
		echo "pass:compare $path/CPFILE and /storage/extsdcard/CPFILE"
		echo "pass:compare $path/CPFILE and /storage/extsdcard/CPFILE">> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	else
		echo "fail:compare $path/CPFILE and /storage/extsdcard/CPFILE"
		echo "fail:compare $path/CPFILE and /storage/extsdcard/CPFILE" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	fi
	date
	date >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	#wait user to play video
	echo "***Please make sure that video at /storage/extsdcard/CPFILE can play normally***"
	echo "***Please make sure that video at /storage/extsdcard/CPFILE can play normally***" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	echo "***wait for check video play at /storage/extsdcard/CPFILE ,press any key to continue***"
	echo "***wait for check video play at /storage/extsdcard/CPFILE ,press any key to continue***" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	read -n 1
	echo "***continue test***"
	echo "***continue test***" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	date
	date >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	echo "finish emmc to SD test"
	echo "finish emmc to SD test" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
else
	echo "skip emmc to SD test"
	echo "skip emmc to SD test" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
fi
#emmc to USB flash disk
echo "////////////////////////////////"
echo "////////////////////////////////" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
if test usb_stat -eq 1
then
	echo "start emmc to USB flash disk test|copy $path/CPFILE folder to /storage/usbdisk1"
	echo "start emmc to USB flash disk test|copy $path/CPFILE folder to /storage/usbdisk1" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	date
	date >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	(time cp -rf CPFILE /storage/usbdisk1) 2>> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log

	if test $? -eq 0
	then
		echo "finish copy $path/CPFILE folder to /storage/usbdisk1"
		echo "finish copy $path/CPFILE folder to /storage/usbdisk1" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	else
		echo "error when copy $path/CPFILE folder to /storage/usbdisk1"
		echo "error when copy $path/CPFILE folder to /storage/usbdisk1" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	fi
	date
	date >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	echo "start compare copy $path/CPFILE folder and /storage/usbdisk1"
	echo "start compare copy $path/CPFILE folder and /storage/usbdisk1" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	date
	date >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	(time diff -qr CPFILE /storage/usbdisk1/CPFILE) 2>> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	if test $? -eq 0
	then
		echo "pass:compare $path/CPFILE and /storage/usbdisk1/CPFILE"
		echo "pass:compare $path/CPFILE and /storage/usbdisk1/CPFILE">> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	else
		echo "fail:compare $path/CPFILE and /storage/usbdisk1/CPFILE"
		echo "fail:compare $path/CPFILE and /storage/usbdisk1/CPFILE" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	fi
	date
	date >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	#wait user to play video
	echo "***Please make sure that video at /storage/usbdisk1/CPFILE can play normally***"
	echo "***Please make sure that video at /storage/usbdisk1/CPFILE can play normally***" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	echo "***wait for check video play at /storage/usbdisk1/CPFILE ,press any key to continue***"
	echo "***wait for check video play at /storage/usbdisk1/CPFILE ,press any key to continue***" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	read -n 1
	echo "***continue test***"
	echo "***continue test***" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	date
	date >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	echo "finish emmc to USB flash disk test"
	echo "finish emmc to USB flash disk test" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
else
	echo "skip emmc to USB test"
	echo "skip emmc to USB test" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
fi