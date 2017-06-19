# apimonitor_modified
APIMonitor used for tracing out the API calls invoked during dynamic analysis of an application

# Usage
1. Pull the source code.
2. Create the emulator by command
	> android avd
```
	Name: Nexus_4
	Device: Nexus 4
	Target: Android 4.1.2- API Level 16
	CPU/ABI: ARM(armeabi-v7a)
	Skin: WXGA720
	RAM: 2048MB
	Internal Storage: 1024MB

```
3. Run the emulator as 
	> emulator -avd Nexus_4
4. Make run.sh executable and run the command:
	> ./run.sh <apk_name>
5. It will inserts its monitored in apk

6. Install the apk in emulator and starts to collect the logs having label `DroidBox` inside logs/<apk_name>.log file.
7. Play with emulator.
8. Stop the logging using
	> ctrl+c
