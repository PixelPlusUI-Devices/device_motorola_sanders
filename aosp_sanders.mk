#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit from sanders device
$(call inherit-product, device/motorola/sanders/device.mk)

# Inherit some cmmon corvus stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080
scr_resolution := 1080

# PPUI Official-ify
CUSTOM_BUILD_TYPE=OFFICIAL
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_INCLUDE_STOCK_ACORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_FACE_UNLOCK_SUPPORTED = true
PPUI_MAINTAINER := Satham Hussain
TARGET_GAPPS_ARCH := arm64

# PPUI Props
PRODUCT_PROPERTY_OVERRIDES += \
ro.ppui.device_name=MotoG(5S)Plus \
ro.ppui.version=3.7 \
ro.ppui.version_code=Ragnarok \
ro.ppui.is_official=true \
ro.ppui.maintainer_name=Satham-Hussain

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sanders
PRODUCT_NAME := aosp_sanders
PRODUCT_BRAND := motorola
PRODUCT_MANUFACTURER := motorola

PRODUCT_SYSTEM_PROPERTY_BLACKLIST := ro.product.model
PRODUCT_MODEL := Moto G (5S) Plus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="sanders" \
    PRIVATE_BUILD_DESC="sanders-user 8.1.0 OPS28.65-36 9fea release-keys"

# FINGERPRINT
BUILD_FINGERPRINT := google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys
VENDOR_BUILD_FINGERPRINT := google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys

# for specific
$(call inherit-product, vendor/motorola/sanders/sanders-vendor.mk)
