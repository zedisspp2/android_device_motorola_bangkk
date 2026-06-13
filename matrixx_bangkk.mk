#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from bangkk device
$(call inherit-product, device/motorola/bangkk/device.mk)

# Inherit some common Matrixx stuff.
$(call inherit-product, vendor/matrixx/config/common_full_phone.mk)

PRODUCT_NAME := matrixx_bangkk
PRODUCT_DEVICE := bangkk
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g84 5G

WITH_KSU := false

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="bangkk_g-user 15 V1TCS35H.88-16-3 0ab83-83eefb release-keys MV-301" \
    BuildFingerprint=motorola/bangkk_g/bangkk:15/V1TCS35H.88-16-3/0ab83-83eefb:user/release-keys \
    DeviceProduct=bangkk_g

# Matrixx_features
WITH_BCR := true
WITH_GMS := true
MATRIXX_MAINTAINER := ZedissP
PRODUCT_NO_CAMERA := true
TARGET_INCLUDE_MATLOG := false
TARGET_DEFAULT_PIXEL_LAUNCHER := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_PIXEL_LAUNCHER := true
TARGET_OPTIMIZED_DEXOPT := true
TARGET_CUSTOM_UDFPS := true
SURFACE_FLINGER_BOOST := true
TARGET_ENABLE_BLUR := true
WITH_GMS_COMMS_SUITE := true

$(call soong_config_set,surfaceflinger,frame_rate_category_high,120)
$(call soong_config_set,surfaceflinger,frame_rate_category_min,60)
