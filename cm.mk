# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := ruby

TARGET_BOOTANIMATION_NAME := vertical-540x960

# Inherit AOSP device configuration for ruby.
$(call inherit-product, device/htc/ruby/full_ruby.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME    := cm_ruby
PRODUCT_BRAND   := HTC
PRODUCT_DEVICE  := ruby
PRODUCT_MODEL   := Amaze 4g
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_ruby BUILD_FINGERPRINT=tmous/htc_ruby/ruby:2.3.4/GRJ22/192596.3:user/release-keys PRIVATE_BUILD_DESC="1.43.531.3 CL83920 release-keys"

PRODUCT_PACKAGES += \
    Camera 





