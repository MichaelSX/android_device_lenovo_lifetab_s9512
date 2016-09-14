$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lenovo/lifetab_s9512/lifetab_s9512-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lenovo/lifetab_s9512/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lenovo/lifetab_s9512/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_lifetab_s9512
PRODUCT_DEVICE := lifetab_s9512

PRODUCT_AAPT_PREF_CONFIG := hdpi#to choose the charger folder
