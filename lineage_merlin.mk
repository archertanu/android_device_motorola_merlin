# Copyright (C) 2015 The CyanogenMod Project
#           (C) 2017 The LineageOS Project
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


# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from merlin device
$(call inherit-product, device/motorola/merlin/full_merlin.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)



# Boot animation
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := merlin
PRODUCT_NAME := lineage_merlin
PRODUCT_MODEL := MotoG3-TE
PRODUCT_BRAND := Motorola
PRODUCT_MANUFACTURER := Motorola
PRODUCT_RELEASE_NAME := merlin

#Device Description Overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=merlin \
    TARGET_DEVICE="merlin"
    PRIVATE_BUILD_DESC= "lineage_merlin-userdebug 7.1.2 NJH47F edb9481746 release-keys"

#Device Fingerprint Overrides
BUILD_FINGERPRINT := "Motorola/lineage_merlin/merlin:7.1.2/NJH47F/edb9481746:userdebug/release-keys"
