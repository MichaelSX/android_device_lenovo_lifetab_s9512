#Cm 12.1 for Medion Lifetab S9512
---------------------------------
I'm not responsible for your device if anything breaks. I'm just doing this to improve my own device and want to share this with people that aim to do the same. I'm still learning as everyone, so please keep that in mind :)

Changelog
---------------
-2016/04/07 Recovery working

Using this
---------------
Reffering to the [CyanogenMod Porting Tutorial](https://wiki.cyanogenmod.org/w/Doc:_porting_intro).

Get your locale Manifest like this:´

	<?xml version="1.0" encoding="UTF-8"?>
	<manifest>
  		<project name="MichaelSX/android_device_lenovo_lifetab_s9512" path="device/lenovo/lifetab_s9512" remote="github" revision="cm-12.1" />
  		<project name="fat-tire/android_kernel_lenovo_lifetab_S9512" path="kernel/lenovo/lifetab_s9512" remote="github" revision="cm-12.1" />
	</manifest>

When doing your repo sync, it should sync into your device directory.
Then do:´

	source build/envsetup.sh
	lunch
	make recoveryimage

Your CyanogenMod Recovery should be build to:´
	
	out/target/product/lifetab_s9512/recovery.img

Connect your device and use from your platform-tools sdk-folder:´

	adb push (directory_to_your_working_directory_for_s9512)/out/target/product/lifetab_s9512/recovery.img /sdcard/recovery.img

To flash the file(referring to[this XDA-Thread](http://forum.xda-developers.com/showthread.php?t=2063132), use:´

	adb shell
	su
	dd if=/sdcard/recovery.img of=/dev/block/platform/omap/omap_hsmmc.1/by-name/recovery

After booting into recovery by using:´

	adb reboot recovery

you should see the workin recovery.
	
More Information to the whole build process: [CyanogenMod Wiki](http://wiki.cyanogenmod.org/) for building instructions.

For more information on this Github Organization and how it is structured,
please [read the wiki article](http://wiki.cyanogenmod.org/index.php/Github_Organization)
