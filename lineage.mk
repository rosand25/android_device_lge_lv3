#
# Copyright (C) 2016 The CyanogenMod Project
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
#

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lv3 device
$(call inherit-product, device/lge/lv3/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := lge
PRODUCT_DEVICE := lv3
PRODUCT_NAME := lineage_lv3
PRODUCT_BRAND := lge
PRODUCT_MODEL := Lg Aristo
PRODUCT_MANUFACTURER := lge

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_GMS_CLIENTID_BASE := android-lge

#PRODUCT_BUILD_PROP_OVERRIDES += \
#    BUILD_FINGERPRINT="MetroPCS/lv3_mpcs_us/lv3:6.0.1/MXB48T/170120946dc98:user/release-keys" \
#    PRIVATE_BUILD_DESC="lv3_mpcs_us-user 6.0.1 MXB48T 170120946dc98 release-keys"
