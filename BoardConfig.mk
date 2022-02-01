#
# Copyright (C) 2022 The LineageOS Project
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

DEVICE_PATH := device/samsung/a9y18qlte
BUILD_TOP := $(shell pwd)
BUILD_BROKEN_DUP_RULES := true

# Audio
AUDIO_FEATURE_ENABLED_AAC_ADTS_OFFLOAD := true
AUDIO_FEATURE_ENABLED_ALAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_ANC_HEADSET := true
AUDIO_FEATURE_ENABLED_APE_OFFLOAD := true
AUDIO_FEATURE_ENABLED_COMPRESS_CAPTURE := false
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_CUSTOMSTEREO := true
AUDIO_FEATURE_ENABLED_DEV_ARBI := false
AUDIO_FEATURE_ENABLED_EXT_AMPLIFIER := false
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_FLAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
AUDIO_FEATURE_ENABLED_HFP := true
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD_24 := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_FEATURE_ENABLED_SOURCE_TRACKING := true
AUDIO_FEATURE_ENABLED_VBAT_MONITOR := true
AUDIO_FEATURE_ENABLED_VORBIS_OFFLOAD := true
AUDIO_FEATURE_ENABLED_WMA_OFFLOAD := true
AUDIO_USE_LL_AS_PRIMARY_OUTPUT := true
BOARD_SUPPORTS_SOUND_TRIGGER := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1

# Firmware
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Platform
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := sdm660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno512

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm660

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk
TARGET_KERNEL_ARCH := arm64
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 sched_enable_hmp=1 sched_enable_power_aware=1 service_locator.enable=1 swiotlb=1 firmware_class.path=/vendor/firmware_mnt/image
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_PAGESIZE := 4096
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET)

# Kernel config
TARGET_KERNEL_CONFIG := sdm660_a9y18qlte_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/a9y18qlte
KERNEL_TOOLCHAIN := $(BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/aarch64/aarch64-linux-android-4.9/bin
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-

# Partitions
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67129344
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4756340736
BOARD_CACHEIMAGE_PARTITION_SIZE := 520093696
BOARD_VENDORIMAGE_PARTITION_SIZE := 796917760
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_ROOT_EXTRA_SYMLINKS := \
	/mnt/vendor/persist:/persist \
    /vendor/dsp:/dsp \
    /vendor/firmware_mnt:/firmware \
    /vendor/bt_firmware:/bt_firmware

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Bluetooth
BOARD_HAS_QCA_BT_ROME := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
QCOM_BT_USE_BTNV := true
QCOM_BT_USE_SMD_TTY := true

# Camera
BOARD_USE_SAMSUNG_CAMERAFORMAT_NV21 := true
TARGET_USES_QTI_CAMERA_DEVICE := true
USE_DEVICE_SPECIFIC_CAMERA := true

# Dexpreopt
ifeq ($(HOST_OS),linux)
  ifneq ($(TARGET_BUILD_VARIANT),eng)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
    endif
  endif
endif
WITH_DEXPREOPT_BOOT_IMG_ONLY ?= true

# FM
BOARD_HAVE_QCOM_FM := true
BOARD_HAS_QCA_FM_SOC := cherokee

# Media
TARGET_USES_MEDIA_EXTENSIONS := true

# Qualcomm
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QC_TIME_SERVICES := true

# Recovery
BOARD_HAS_DOWNLOAD_MODE := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/recovery.fstab

# Treble
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true
BOARD_VNDK_VERSION := current
BOARD_VNDK_RUNTIME_DISABLE := true

# Vendor
TARGET_COPY_OUT_VENDOR := vendor

# Enable 64-bits binder
TARGET_USES_64_BIT_BINDER := true

# Graphics
BOARD_USES_ADRENO := true

TARGET_USES_ION := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_GRALLOC1 := true
TARGET_USES_HWC2 := true

OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml

# Init
TARGET_INIT_VENDOR_LIB := libinit_a9y18qlte
TARGET_RECOVERY_DEVICE_MODULES := libinit_a9y18qlte

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Protobuf
PROTOBUF_SUPPORTED := true

# Use mke2fs to create ext4 images
TARGET_USES_MKE2FS := true

# RIL
TARGET_PROVIDES_QTI_TELEPHONY_JAR := true

# Root
BOARD_ROOT_EXTRA_FOLDERS := config omr efs

# Seccomp
BOARD_SECCOMP_POLICY := $(DEVICE_PATH)/seccomp_policy

# SELinux
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private

# WiFi
BOARD_HAVE_SAMSUNG_WIFI := true
BOARD_HAS_QCOM_WLAN := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X

# Inherit from the proprietary version
-include vendor/samsung/a9y18qlte/BoardConfigVendor.mk
