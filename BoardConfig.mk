#First kernel try referring to armv7-a-neon

# inherit from the proprietary version
#preset
-include vendor/lenovo/lifetab_s9512/BoardConfigVendor.mk
USE_CAMERA_STUB := true
TARGET_NO_BOOTLOADER := true
TARGET_PREBUILT_KERNEL := device/lenovo/lifetab_s9512/kernel
TARGET_BOOTLOADER_BOARD_NAME := lifetab_s9512

#configured
TARGET_ARCH := arm#other option=omap3 (omap4?)
TARGET_ARCH_VARIANT := armv7-a-neon#predefined
TARGET_CPU_VARIANT := cortex-a9#for omap 4430
TARGET_BOARD_PLATFORM := unknown#predefined
TARGET_CPU_ABI := armeabi-v7a#predefined
TARGET_CPU_ABI2 := armeabi#predefined
TARGET_CPU_SMP := true#predefined
ARCH_ARM_HAVE_TLS_REGISTER := true#predefined

BOARD_KERNEL_CMDLINE := #no parameter required
BOARD_KERNEL_BASE := 0x80000000#predefined
BOARD_KERNEL_PAGESIZE := 4096#checked with /proc/partitions

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00800000#mmcblk0p12 = 8192 x 1024 in hex
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00800000#mmcblk0p11 = 8192 x 1024 in hex
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x20000000#mmcblk0p13 =524288 x 1024 in hex
BOARD_USERDATAIMAGE_PARTITION_SIZE := 36FF7FCE8#mmcblk0p16 = 14417408 x 1024 in hex
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_NO_SELECT_BUTTON := true#powerbutton required for selection

#twrp by xda-tutorial of Dees_Troy
RECOVERY_VARIANT := twrp#comment for cmr
TW_THEME := landscape_hdpi#others:portrait_hdpi, portrait_mdpi, landscape_mdpi, watch_mdpi
RECOVERY_SDCARD_ON_DATA := true#for Handling of /data
BOARD_HAS_NO_REAL_SDCARD := true#disables partitioning
TW_NO_BATT_PERCENT := true#if everything is okay disable to see percantage of battery in recovery
TW_CUSTOM_POWER_BUTTON := 107#maps power button for lockscreen
TW_NO_REBOOT_BOOTLOADER := true#removes Bootloader option
TW_NO_REBOOT_RECOVERY := true#removes Recovery option
TW_NO_USB_STORAGE := true#if USB isn't supported
BOARD_CANT_BUILD_RECOVERY_FROM_BOOT_PATCH :=true
TW_SCREEN_BLANK_ON_BOOT := true#may fix boot problem
#RECOVERY_TOUCHSCREEN_SWAP_XY :=true#x and y changed
#RECOVERY_TOUCHSCREEN_FLIP_Y := true#flips y touchscreen values
#RECOVERY_TOUCHSCREEN_FLIP_X := true#flips x touchscreen values
#TWRP_EVENT_LOGGING := true#enables touch event logging, just for debugging
#BOARD_HAS_FLIPPED_SCREEN := true
