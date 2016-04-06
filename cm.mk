# Release name
PRODUCT_RELEASE_NAME := lifetab_s9512

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/lifetab_s9512/device_lifetab_s9512.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := lifetab_s9512
PRODUCT_NAME := cm_lifetab_s9512
PRODUCT_BRAND := lenovo
PRODUCT_MODEL := lifetab_s9512
PRODUCT_MANUFACTURER := lenovo
