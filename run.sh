#!/bin/bash
if [ -z "$1" ]
then
				echo "./run.sh apk-path"
				exit 1
fi
#getting package name from manifest file 
pac_name=$(java -jar APKParser.jar $1|grep -o "package[[:space:]]*"='[[:space:]]*[^ ]\+'|cut -d "=" -f2|sed -e 's/[[:space:]]*//'|sed 's/\./\//g'|sed 's/\"/L/'|sed 's/\"//')
#echo $1 $pac_name
./apimonitor.py $1 $pac_name>/dev/null
dir=$(dirname "$1")
f=$(basename "$1")
f_name="${f%.*}"
echo "directory"$dir
echo "file"$f
echo "f_name"$f_name
echo "Installing Modifying apk"
echo $dir"/"$f_name"_name.apk"
adb install -r $dir"/"$f_name"_new.apk"
echo "apk installed"
adb logcat -c
echo "collecting log >logs/"$f_name".log"
adb logcat -s DroidBox>"logs/"$f_name".log"

