#Author：Issac Lin
#Ext: 7536
#version:1.1
#SD_copy-compare_test
#part of different_storage_copy-compare_test
#

sd_stat=$1
usb_stat=$2
#SD to emmc
echo "////////////////////////////////"
echo "////////////////////////////////" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
if test -d /sdcard/CPFILE
then 
	rm -r /sdcard/CPFILE
	echo "delete /sdcard/CPFILE"
	echo "delete /sdcard/CPFILE" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
fi
echo "start SD to emmc test|copy /storage/extsdcard/CPFILE to /sdcard"
echo "start SD to emmc test|copy /storage/extsdcard/CPFILE to /sdcard" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
date
date >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
(time cp -rf /storage/extsdcard/CPFILE /sdcard) 2>> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log

if test $? -eq 0
then
	echo "finish copy /storage/extsdcard/CPFILE to /sdcard"
	echo "finish copy /storage/extsdcard/CPFILE to /sdcard" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
else
	echo "error when copy /storage/extsdcard/CPFILE to /sdcard"
	echo "error when copy /storage/extsdcard/CPFILE to /sdcard" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
fi
date
date >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
echo "start compare /storage/extsdcard/CPFILE and /sdcard/CPFILE"
echo "start compare /storage/extsdcard/CPFILE and /sdcard/CPFILE" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
date
date >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
(time diff -qr /storage/extsdcard/CPFILE /sdcard/CPFILE) 2>> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
if test $? -eq 0
then
	echo "pass:compare /storage/extsdcard/CPFILE and /sdcard/CPFILE"
	echo "pass:compare /storage/extsdcard/CPFILE and /sdcard/CPFILE" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
else
	echo "fail:compare /storage/extsdcard/CPFILE and /sdcard/CPFILE"
	echo "fail:compare /storage/extsdcard/CPFILE and /sdcard/CPFILE" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
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
echo "finish SD to emmc test"
echo "finish SD to emmc test" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
#SD to SD
echo "////////////////////////////////"
echo "////////////////////////////////" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
echo "start SD to SD test|copy /storage/extsdcard/CPFILE to /storage/extsdcard/CPTEMP"
echo "start SD to SD test|copy /storage/extsdcard/CPFILE to /storage/extsdcard/CPTEMP" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
date
date >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
(time cp -rf /storage/extsdcard/CPFILE /storage/extsdcard/CPTEMP) 2>> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log

if test $? -eq 0
then
	echo "finish copy /storage/extsdcard/CPFILE to /storage/extsdcard/CPTEMP"
	echo "finish copy /storage/extsdcard/CPFILE to /storage/extsdcard/CPTEMP" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
else
	echo "error when copy /storage/extsdcard/CPFILE to /storage/extsdcard/CPTEMP"
	echo "error when copy /storage/extsdcard/CPFILE to /storage/extsdcard/CPTEMP" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
fi
date
date >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
echo "start compare /storage/extsdcard/CPFILE and /storage/extsdcard/CPTEMP"
echo "start compare /storage/extsdcard/CPFILE and /storage/extsdcard/CPTEMP" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
date
date >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
(time diff -qr /storage/extsdcard/CPFILE /storage/extsdcard/CPTEMP) 2>> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
if test $? -eq 0
then
	echo "pass:compare /storage/extsdcard/CPFILE and /storage/extsdcard/CPTEMP"
	echo "pass:compare /storage/extsdcard/CPFILE and /storage/extsdcard/CPTEMP" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
else
	echo "fail:compare /storage/extsdcard/CPFILE and /storage/extsdcard/CPTEMP"
	echo "fail:compare /storage/extsdcard/CPFILE and /storage/extsdcard/CPTEMP" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
fi
date
date >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
#wait user to play video
echo "***Please make sure that video at /storage/extsdcard/CPTEMP can play normally***"
echo "***Please make sure that video at /storage/extsdcard/CPTEMP can play normally***" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
echo "***wait for check video play at /storage/extsdcard/CPTEMP ,press any key to continue***"
echo "***wait for check video play at /storage/extsdcard/CPTEMP ,press any key to continue***" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
read -n 1
echo "***continue test***"
echo "***continue test***" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
date
date >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
echo "finish SD to SD test"
echo "finish SD to SD test" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
#SD to USB flash disk
echo "////////////////////////////////"
echo "////////////////////////////////" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
if test usb_stat -eq 1
then
	if test -d /storage/usbdisk1/CPFILE
	then 
		rm -r /storage/usbdisk1/CPFILE
		echo "delete /storage/usbdisk1/CPFILE"
		echo "delete /storage/usbdisk1/CPFILE" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	fi
	echo "start SD to USB flash disk test|copy /storage/extsdcard/CPFILE folder to /storage/usbdisk1"
	echo "start SD to USB flash disk test|copy /storage/extsdcard/CPFILE folder to /storage/usbdisk1" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	date
	date >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	(time cp -rf /storage/extsdcard/CPFILE /storage/usbdisk1) 2>> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log

	if test $? -eq 0
	then
		echo "finish copy /storage/extsdcard/CPFILE folder to /storage/usbdisk1"
		echo "finish copy /storage/extsdcard/CPFILE folder to /storage/usbdisk1" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	else
		echo "error when copy /storage/extsdcard/CPFILE folder to /storage/usbdisk1"
		echo "error when copy /storage/extsdcard/CPFILE folder to /storage/usbdisk1" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	fi
	date
	date >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	echo "start compare /storage/extsdcard/CPFILE and /storage/usbdisk1/CPFILE"
	echo "start compare /storage/extsdcard/CPFILE and /storage/usbdisk1/CPFILE" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	date
	date >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	(time diff -qr /storage/extsdcard/CPFILE /storage/usbdisk1/CPFILE) 2>> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	if test $? -eq 0
	then
		echo "pass:compare /storage/extsdcard/CPFILE and /storage/usbdisk1/CPFILE"
		echo "pass:compare /storage/extsdcard/CPFILE and /storage/usbdisk1/CPFILE" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
	else
		echo "fail:compare /storage/extsdcard/CPFILE and /storage/usbdisk1/CPFILE"
		echo "fail:compare /storage/extsdcard/CPFILE and /storage/usbdisk1/CPFILE" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
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
	echo "finish SD to USB flash disk test"
	echo "finish SD to USB flash disk test" >> /data/different_storage_copy-compare_test/different_storage_copy-compare_test.log
else
	echo "skip SD to USB flash disk test"
fi
