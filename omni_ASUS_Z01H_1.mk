#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from ASUS_Z01H_1 device
$(call inherit-product, device/asus/ASUS_Z01H_1/device.mk)

PRODUCT_DEVICE := ASUS_Z01H_1
PRODUCT_NAME := omni_ASUS_Z01H_1
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_Z01HD
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus-tpin

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Z01H-user 8.0.0 OPR1.170623.026 WW_user_80.30.76.74_20190319 release-keys"

BUILD_FINGERPRINT := asus/WW_Z01H/ASUS_Z01H_1:8.0.0/OPR1.170623.026/WW_80.30.76.74_20190319:user/release-keys
