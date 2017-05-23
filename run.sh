#!/bin/bash
if [ -z "$1" ]
then
				echo "Provide apk path"
				exit 1
fi
./apimonitor.py $1
echo $1
dir=$(dirname "$1")
f=$(basename "$1")
f_name="${f%.*}"
#echo "directory"$dir
#echo "file"$f
#echo "f_name"$f_name
echo "Installing Modifying apk"
adb install -r $dir"/"$f_name"_new.apk">/dev/null
echo "apk installed"
adb logcat -c
echo "collecting log >logs/"$f_name".log"
adb logcat -s DroidBox>"logs/"$f_name".log"

