#
# Copyright (C) 2012 Sportsstar89
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


PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_LOCALES += en
DEVICE_PACKAGE_OVERLAYS += device/htc/ruby/overlay
# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

## (1) First, the most specific values, i.e. the aspects that are specific to GSM
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.com.google.gmsversion=2.3_r5 \
    ro.com.google.clientidbase=android-htc \
    ro.com.google.clientidbase.yt=android-htc \
    ro.com.google.clientidbase.am=android-tmobile-us \
    ro.com.google.clientidbase.vs=android-hms-tmobile-us \
    ro.com.google.clientidbase.gmm=android-htc \
    ro.com.google.clientidbase.ms=android-hms-tmobile-us \
    ro.cdma.home.operator.numeric=310120 \
    ro.phone.min_match=7 \
    ro.ril.enable.dtm=0 \
    ro.ril.def.agps.mode=2 \
    ro.ril.gprsclass=12 \
    ro.ril.hsdpa.category=10 \
    ro.ril.hsupa.category=6 \
    ro.ril.hsxpa=3 \
    ro.telephony.default_network=0 \
    ro.telephony.ril.v3=signalstrength,singlepdp \
    ro.config.lte=true \
    telephony.lteOnCdmaDevice=0 \
    gsm.sim.operator.alpha=tmobile \
    gsm.sim.operator.numeric=310120 \
    gsm.sim.operator.iso-country=us \
    gsm.operator.alpha=tmobile \
    gsm.operator.numeric=310120 \
    gsm.operator.iso-country=us \
    wifi.interface=tiwlan0 \
    wifi.supplicant_scan_interval=45 \
    ro.media.dec.jpeg.memcap=20000000 \
    ro.opengles.version=131072 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y \
    ro.sf.lcd_density=240

# Dalvik
include frameworks/base/build/phone-xhdpi-1024-dalvik-heap.mk

PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.hw=1 \
    debug.composition.type=dyn \
    hwui.disable_vsync=false \
    hwui.print_config=choice
#    ro.sf.compbypass.enable=1
#    debug.enabletr=true
#    dev.pm.dyn_samplingrate=1
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true
#    com.qc.hdmi_out=false

# USB
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.sys.usb.config=mass_storage \
    persist.service.adb.enable=1

PRODUCT_PACKAGES += \
    librs_jni \
    libgenlock \
    copybit.msm8660 \
    gralloc.msm8660 \
    hwcomposer.msm8660 \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libOmxCore \
    libOmxVidEnc \
    libOmxVdec \
    libstagefrighthw \
    libdivxdrmdecrypt \
    com.android.future.usb.accessory


# Filesystem management tools
#PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs
# NFC Support
#PRODUCT_PACKAGES += \
#    libnfc \
#    libnfc_jni \
#    Nfc \
#    Tag \
#    com.android.nfc_extras \
#    nfc.ruby
# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm8660 \
    audio.primary.msm8660 \
    libaudioutils

# Prebuilt files/configs
PRODUCT_COPY_FILES += \
    device/htc/ruby/prebuilt/root/init.ruby.rc:root/init.ruby.rc \
    device/htc/ruby/prebuilt/root/init.ruby.usb.rc:root/init.ruby.usb.rc \
    device/htc/ruby/prebuilt/root/ueventd.ruby.rc:root/ueventd.ruby.rc \
    device/htc/ruby/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab \
    device/htc/ruby/prebuilt/system/etc/init.post_boot.sh:system/etc/init.post_boot.sh \
    device/htc/ruby/prebuilt/system/usr/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
    device/htc/ruby/prebuilt/system/usr/idc/ruby-keypad.idc:system/usr/idc/ruby-keypad.idc \
    device/htc/ruby/prebuilt/system/usr/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/htc/ruby/prebuilt/system/usr/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/htc/ruby/prebuilt/system/usr/keychars/ruby-keypad.kcm.bin:system/usr/keychars/ruby-keypad.kcm.bin \
    device/htc/ruby/prebuilt/system/usr/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
    device/htc/ruby/prebuilt/system/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/ruby/prebuilt/system/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/htc/ruby/prebuilt/system/usr/keylayout/ruby-keypad.kl:system/usr/keylayout/ruby-keypad.kl \
    device/htc/ruby/prebuilt/system/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/ruby/prebuilt/system/etc/spn-conf.xml:system/etc/spn-conf.xml \
    device/htc/ruby/prebuilt/system/etc/voicemail-conf.xml:system/etc/voicemail-conf.xml


PRODUCT_COPY_FILES += \
    device/htc/ruby/prebuilt/system/lib/hw/gps.ruby.so:/system/lib/hw/gps.ruby.so \
    device/htc/ruby/prebuilt/system/lib/libloc_api-rpc-qc.so:/system/lib/libloc_api-rpc-qc.so \
    device/htc/ruby/prebuilt/system/lib/libcommondefs.so:system/lib/libcommondefs.so \
    device/htc/ruby/prebuilt/system/lib/hw/sensors.ruby.so:/system/lib/hw/sensors.ruby.so

# Audio DSP Profiles
PRODUCT_COPY_FILES += \
    device/htc/ruby/dsp/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    device/htc/ruby/dsp/AIC3254_REG_DualMic_XD.csv:system/etc/AIC3254_REG_DualMic_XD.csv \
    device/htc/ruby/dsp/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    device/htc/ruby/dsp/AudioBTID.csv:system/etc/AudioBTID.csv \
    device/htc/ruby/dsp/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    device/htc/ruby/dsp/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv \
    device/htc/ruby/dsp/TPA2051_CFG_XC.csv:system/etc/TPA2051_CFG_XC.csv \
    device/htc/ruby/dsp/TPA2051_CFG_XC.csv:system/etc/TPA2051_CFG_XB.csv \
    device/htc/ruby/dsp/soundimage/Sound_MFG.txt:system/etc/soundimage/Sound_MFG.txt \
    device/htc/ruby/dsp/soundimage/Sound_Original_Recording.txt:system/etc/soundimage/Sound_Original_Recording.txt \
    device/htc/ruby/dsp/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
    device/htc/ruby/dsp/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    device/htc/ruby/dsp/soundimage/Sound_Phone_Original_HP.txt:system/etc/soundimage/Sound_Phone_Original_HP.txt \
    device/htc/ruby/dsp/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
    device/htc/ruby/dsp/soundimage/Sound_Phone_Original_SPK.txt:system/etc/soundimage/Sound_Phone_Original_SPK.txt \
    device/htc/ruby/dsp/soundimage/Sound_Rec_Landscape.txt:system/etc/soundimage/Sound_Rec_Landscape.txt \
    device/htc/ruby/dsp/soundimage/Sound_Rec_Portrait.txt:system/etc/soundimage/Sound_Rec_Portrait.txt \
    device/htc/ruby/dsp/soundimage/Sound_Recording.txt:system/etc/soundimage/Sound_Recording.txt \
    device/htc/ruby/dsp/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/ruby/dsp/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/ruby/dsp/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/ruby/dsp/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    device/htc/ruby/dsp/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg

# wifi firmware
#PRODUCT_COPY_FILES += \
#    device/htc/ruby/wifi/firmware.bin:system/etc/wifi/firmware.bin \
#    device/htc/ruby/wifi/firmware_ap.bin:system/etc/wifi/firmware_ap.bin \
#    device/htc/ruby/wifi/hostapd.conf:system/etc/wifi/hostapd.conf \
#    device/htc/ruby/wifi/tiwlan.ini:system/etc/wifi/tiwlan.ini \
#    device/htc/ruby/wifi/tiwlan_ap.ini:system/etc/wifi/tiwlan_ap.ini \
#    device/htc/ruby/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
#    device/htc/ruby/firmware/fmc_init_1273.2.bts:system/etc/firmware/fmc_init_1273.2.bts \
#    device/htc/ruby/firmware/fm_rx_init_1273.2.bts:system/etc/firmware/fm_rx_init_1273.2.bts \
#    device/htc/ruby/firmware/htc_1271fw.bin:system/etc/firmware/htc_1271fw.bin \
#    device/htc/ruby/firmware/htc_1271fw_196_header.bin:system/etc/firmware/htc_1271fw_196_header.bin \
#    device/htc/ruby/firmware/TIInit_7.6.15.bts:system/etc/firmware/TIInit_7.6.15.bts \
#    device/htc/ruby/firmware/WL127x_2.0_2.25.bts:system/etc/firmware/WL127x_2.0_2.25.bts \
#    device/htc/ruby/firmware/vac_config.ini:system/etc/firmware/vac_config.ini \
#    device/htc/ruby/firmware/version:system/etc/firmware/version



# Prebuilt kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
    LOCAL_KERNEL := device/htc/ruby/prebuilt/root/kernel
else
    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += $(LOCAL_KERNEL):kernel

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
#    frameworks/base/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml

# recovery charge mode support
include device/htc/ruby/recovery/recovery.mk

# media profiles and capabilities spec
$(call inherit-product, device/htc/ruby/media_a1026.mk)

# htc audio settings
$(call inherit-product, device/htc/ruby/media_htcaudio.mk)

# stuff common to all HTC phones
$(call inherit-product, device/htc/common/common.mk)

## (2) Also get non-open-source GSM-specific aspects if available
$(call inherit-product-if-exists, vendor/htc/ruby/ruby-vendor.mk)
