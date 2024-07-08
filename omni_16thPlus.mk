#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)


# Inherit from our custom product configuration
$(call inherit-product, vendor/pb/config/common.mk)

# Inherit some common Omni stuff.
# $(call inherit-product, vendor/omni/config/common.mk)

# Inherit from 16thPlus device
$(call inherit-product, device/meizu/16thPlus/device.mk)

PRODUCT_DEVICE := 16thPlus
PRODUCT_NAME := omni_16thPlus
PRODUCT_BRAND := meizu
PRODUCT_MODEL := 16th Plus
PRODUCT_MANUFACTURER := meizu

PRODUCT_GMS_CLIENTID_BASE := android-meizu

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="qssi-user 10 QKQ1.191222.002 1595524937 release-keys"

BUILD_FINGERPRINT := meizu/qssi/qssi:10/QKQ1.191222.002/1595524937:user/release-keys
