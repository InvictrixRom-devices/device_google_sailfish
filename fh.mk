# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common stuff.
$(call inherit-product, vendor/invictrix/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/marlin/aosp_sailfish.mk)
$(call inherit-product, vendor/nepo/my-apps.mk)

-include device/google/marlin/sailfish/device-lineage.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := invictrix_sailfish
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel
TARGET_MANUFACTURER := HTC
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sailfish \
    PRIVATE_BUILD_DESC="sailfish-user 8.1.0 OPM2.171019.029 4657601 release-keys"

BUILD_FINGERPRINT=google/sailfish/sailfish:8.1.0/OPM2.171019.029/4657601:user/release-keys
    
$(call inherit-product-if-exists, vendor/google/marlin/marlin-vendor.mk)
