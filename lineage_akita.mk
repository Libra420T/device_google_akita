#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/akita/aosp_akita.mk)
$(call inherit-product, device/google/zuma/lineage_common.mk)

include device/google/akita/akita/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 8a
PRODUCT_NAME := lineage_akita

# Build Flags
EVEREST_BUILD_TYPE := OFFICIAL
EVEREST_MAINTAINER := Libra420T

# UDFPS
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ICONS := true
EXTRA_UDFPS_ANIMATIONS := true

# Build Launcher3 in GAPPS (default is Pixel Launcher)
TARGET_INCLUDE_PIXEL_LAUNCHER := false

# Quick switch (add more than one Launcher in build)
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true

# Gapps
WITH_GAPPS := true
WITH_GMS := true

#Xtras
TARGET_IS_PIXEL_8 := true
TARGET_IS_PIXEL := true

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=akita \
    PRIVATE_BUILD_DESC="akita-user 14 AP2A.240905.003.A1 12234140 release-keys"

BUILD_FINGERPRINT := google/akita/akita:14/AP2A.240905.003.A1/12234140:user/release-keys

$(call inherit-product, vendor/google/akita/akita-vendor.mk)
