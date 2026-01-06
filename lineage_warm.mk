#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from warm device
$(call inherit-product, device/xiaomi/warm/device.mk)

PRODUCT_NAME := lineage_warm
PRODUCT_DEVICE := warm
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 24116PCC1I

PRODUCT_SYSTEM_NAME := warm_in_global
PRODUCT_SYSTEM_DEVICE := warm

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="warm_in_global-user 14 UKQ1.240624.001 OS1.0.10.0.UGVINXM release-keys" \
    BuildFingerprint=POCO/warm_in_global/warm:14/UKQ1.240624.001/OS1.0.10.0.UGVINXM:user/release-keys \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
