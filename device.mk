# Inherit products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

$(shell mkdir -p out/target/product/pocket2plus/)
$(shell touch out/target/product/pocket2plus/dtb.img)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/recovery.fstab:root/etc/recovery.fstab \
    $(LOCAL_PATH)/recovery/recovery.tmpfsdata.fstab:root/etc/recovery.tmpfsdata.fstab \
    $(LOCAL_PATH)/recovery/init.recovery.ums312_2h10.rc:root/init.recovery.ums312_2h10.rc \
    $(LOCAL_PATH)/recovery/ueventd.ums312_2h10.rc:root/ueventd.ums312_2h10.rc \
    $(LOCAL_PATH)/recovery/fstab.ums312_2h10:root/fstab.ums312_2h10

# Vendor default.prop
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    camera.disable_zsl_mode=1 \
    sys.usb.controller=musb-hdrc.0.auto \
