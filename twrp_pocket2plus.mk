# Inherit device configuration
$(call inherit-product, device/retroid/pocket2plus/device.mk)

# Inherit Omni configs
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identification
PRODUCT_DEVICE := pocket2plus
PRODUCT_NAME := twrp_pocket2plus
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := Retroid
PRODUCT_MODEL := Retroid Pocket 2 Plus
