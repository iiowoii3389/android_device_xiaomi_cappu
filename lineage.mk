# Copyright (C) 2018 The LineageOS Project

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

TARGET_SCREEN_WIDTH := 1536
TARGET_SCREEN_HEIGHT := 2048

$(call inherit-product, device/xiaomi/cappu/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := cappu
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Mi Pad 3
PRODUCT_NAME := lineage_cappu
PRODUCT_RELEASE_NAME := cappu

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Xiaomi/cappu/cappu:7.0/NRD90M/V10.2.1.0.NCICNXM:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cappu-user 7.0 NRD90M V10.2.1.0.NCICNXM release-keys" \
    PRODUCT_NAME="cappu" \
    TARGET_DEVICE="cappu"

