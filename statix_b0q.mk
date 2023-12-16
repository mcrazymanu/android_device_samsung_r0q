#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/statix/config/common.mk)

# Inherit from r0q device
$(call inherit-product, device/samsung/r0q/device.mk)

PRODUCT_DEVICE := r0q
PRODUCT_NAME := statix_r0q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-S901
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="r0qzhx-user 13 TP1A.220624.014 S9080ZHU2BVL1 release-keys"

BUILD_FINGERPRINT := samsung/r0qzhx/r0q:12/SP1A.210812.016/S9080ZHU2BVL1:user/release-keys
