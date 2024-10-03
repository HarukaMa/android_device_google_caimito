#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/caimito/aosp_caiman.mk)
$(call inherit-product, device/google/zumapro/lineage_common.mk)

include device/google/caimito/caiman/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 9 Pro
PRODUCT_NAME := lineage_caiman

# Boot animation
TARGET_SCREEN_HEIGHT := 2856
TARGET_SCREEN_WIDTH := 1280

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=caiman \
    PRIVATE_BUILD_DESC="caiman-user 14 AD1A.240905.004 12196292 release-keys"

BUILD_FINGERPRINT := google/caiman/caiman:14/AD1A.240905.004/12196292:user/release-keys

$(call inherit-product, vendor/google/caiman/caiman-vendor.mk)
