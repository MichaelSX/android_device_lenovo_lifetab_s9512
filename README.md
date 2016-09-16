#Cm 12.1 for Medion Lifetab S9512
---------------------------------
I'm not responsible for your device if anything breaks. 
I'm just doing this to improve my own device and want to share this with people that aim to do the same. 
This project is kept as an hobby, so improvements will come really slowly.

###Changelog
---------------
-2016/04/07 Recovery booting, seems like selection of flashing is not working. 

-2016/04/08 started to compile twrp touch for better support with broken volume keys. 

-2016/09/14 added PRODUCT_AAPT_PREF_CONFIG to device.mk to prevent fonts_log error

###Using this
---------------
Reffering to the [CyanogenMod Porting Tutorial](https://wiki.cyanogenmod.org/w/Doc:_porting_intro).

Get your locale Manifest like this:
```xml
	<?xml version="1.0" encoding="UTF-8"?>
	<manifest>
  		<project name="MichaelSX/android_device_lenovo_lifetab_s9512" path="device/lenovo/lifetab_s9512" remote="github" revision="master" />
	</manifest>
```
When doing your repo sync, it should sync into your device directory.
Then do:
```bash
	source build/envsetup.sh
	lunch
	make recoveryimage
```
Your CyanogenMod Recovery should be build to:
```bash	
	out/target/product/lifetab_s9512/recovery.img
```
Connect your device and use from your platform-tools sdk-folder:
```bash
	adb push (directory_to_your_working_directory_for_s9512)/out/target/product/lifetab_s9512/recovery.img /sdcard/recovery.img
```
To flash the file(referring to[this XDA-Thread](http://forum.xda-developers.com/showthread.php?t=2063132), use:
```bash
	adb shell
	su
	dd if=/sdcard/recovery.img of=/dev/block/platform/omap/omap_hsmmc.1/by-name/recovery
```
After booting into recovery by using:
```bash
	adb reboot recovery
```
you should see the recovery. 
	
More Information to the whole build process: [CyanogenMod Wiki](http://wiki.cyanogenmod.org/) for building instructions.

For more information on this Github Organization and how it is structured,
please [read the wiki article](http://wiki.cyanogenmod.org/index.php/Github_Organization)


###Partitionsheme:
|Partition|name|mountpoint|size|blocksize|blocks|blocks*1024|
|:---|:---|:---|:---|:---|:---|:---|
|`mmcblk0p1`|`xloader`||||128|131072|
|`mmcblk0p2`|`bootloader`||||256|262144|
|`mmcblk0p3`|`systeminfo`||||64|65536|
|`mmcblk0p4`|`ManufactureData`||||1024|1048576|
|`mmcblk0p5`|`FTM`||||8192|8388608|
|`mmcblk0p6`|`FTMData`||||65536|67108864|
|`mmcblk0p7`|`SecureFS`|`/factory`|62M|4096|65536|67108864|
|`mmcblk0p8`|`pidinfo`||||512|524288|
|`mmcblk0p9`|`splash`||||6144|6291456|
|`mmcblk0p10`|`hidden`|`/hidden`|31M|4096|32768|33554432|
|`mmcblk0p11`|`recovery`||||8192|8388608|
|`mmcblk0p12`|`boot`||||8192|8388608|
|`mmcblk0p13`|`system`|`/system`|503M|4096|524388|536870912|
|`mmcblk0p14`|`cache`|`/cache`|251M|4096|262144|268325456|
|`mmcblk0p15`|`cda`|`/hidden/data`|127M|4096|131072|134217728|
|`mmcblk0p16`|`userdata`|`/data`|13G|4096|14417408|14763425790|
|`mmcblk0boot1`|||||4096|4194304|
|`mmcblk0boot0`|||||4096|4194304|
