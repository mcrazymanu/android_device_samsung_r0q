#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := nosdcard

# Rootdir
PRODUCT_PACKAGES += \
    init.qti.kernel.debug-taro.sh \
    init.qcom.efs.sync.sh \
    init.qcom.sensors.sh \
    init.crda.sh \
    init.qti.kernel.debug-diwali.sh \
    install-recovery.sh \
    init.qcom.sh \
    init.qcom.coex.sh \
    init.vendor.sensordebug.sh \
    qca6234-service.sh \
    init.qti.kernel.debug.sh \
    init.qti.media.sh \
    init.kernel.post_boot-taro.sh \
    init.qti.display_boot.sh \
    init.mdm.sh \
    init.qcom.post_boot.sh \
    init.qcom.class_core.sh \
    init.qti.kernel.early_debug.sh \
    init.kernel.post_boot.sh \
    init.class_main.sh \
    init.qcom.sdio.sh \
    init.kernel.post_boot-diwali.sh \
    init.qcom.early_boot.sh \
    init.qcom.usb.sh \
    init.kernel.post_boot-cape.sh \
    init.qti.write.sh \
    vendor_modprobe.sh \
    init.qti.qcv.sh \
    init.qti.kernel.sh \
    init.qti.kernel.early_debug-taro.sh \
    init.qti.kernel.debug-cape.sh \

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.samsung.rc \
    init.qcom.rc \
    init.samsung.display.rc \
    init.samsung.ese.rc \
    init.target.rc \
    init.samsung.bsp.rc \
    init.qti.ufs.rc \
    init.qcom.usb.rc \
    init.qcom.factory.rc \
    init.b0q.rc \
    init.qti.kernel.rc \
    init.samsung.dp.rc \
    init.samsung.power.rc \
    init.samsung.perf.rc \
    init.recovery.samsung.rc \
    init.recovery.qcom.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom:$(TARGET_COPY_OUT_RAMDISK)/fstab.qcom

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 31

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

#Platform
MSMSTEPPE := taro

# Inherit the proprietary files
$(call inherit-product, vendor/samsung/b0q/b0q-vendor.mk)


# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/samsung/sm8450-common/common.mk)
