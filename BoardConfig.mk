DEVICE_PATH := device/T-Mobile/S98122AA1
# For building with TWRP minimal manifest
ALLOW_MISSING_DEPENDENCIES := true
# Architecture (arm64)
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
# Assert
TARGET_OTA_ASSERT_DEVICE := S98122AA1
# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
# Kernel
BOARD_KERNEL_CMDLINE := [bootopt=64S3,32N2,64N2 buildvariant=user]
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/zImage
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x11088000
BOARD_KERNEL_TAGS_OFFSET := 0x07c08000
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
# Platform
TARGET_BOARD_PLATFORM := mt6833
# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 12.0.0
# TWRP Configuration
TW_THEME := portrait_hdpi
#TW_EXTRA_LANGUAGES := true #Only if you need it
TW_SCREEN_BLANK_ON_BOOT := false
TW_INPUT_BLACKLIST := "hbtp_vm"
BOARD_HAS_NO_REAL_SDCARD := true
TW_USE_TOOLBOX := true
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_MTP := true
TW_OEM_BUILD := true
# Add EXT4 support
TARGET_USERIMAGES_USE_EXT4 := true
# Disable/enable SELinux. Only suggested when you want to enable SELinux support
TWHAVE_SELINUX := false
# Remove MTP support
TW_EXCLUDE_MTP := true
# No screen timeout
TW_NO_SCREEN_TIMEOUT := true
# disables things like sdcard partitioning and may save you some space if TWRP isn't fitting in your recovery patition
BOARD_HAS_NO_REAL_SDCARD := true
# this enables proper handling of /data/media on devices that have this folder for storage (most Honeycomb and devices that originally shipped with ICS like Galaxy Nexus
RECOVERY_SDCARD_ON_DATA := true
#TW_INTERNAL_STORAGE_PATH := / 
#TW_INTERNAL_STORAGE_MOUNT_POINT := / 
TW_EXTERNAL_STORAGE_PATH := /sdcard/
TW_EXTERNAL_STORAGE_MOUNT_POINT := /sdcard/
# If your device has recovery as a second ramdisk of boot.img
TW_HAS_NO_RECOVERY_PARTITION := true
TW_FORCE_CPUINFO_FOR_DEVICE_ID := true
# Decryption support for /data
TW_INCLUDE_CRYPTO -- General decryption modules
# On some device, TWRP backup folder name will show 0000000000 bcos cpuinfo has no serial number. Using this flag then it will use ro.product.model as the folder name instead of all 0000000000
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
# Default brightness for TWRP
TW_DEFAULT_BRIGHTNESS := 150
# Set the default language, if not english
TW_DEFAULT_LANGUAGE := en-US
# For people who would want to have ToyBox rather than Busybox
TW_USE_TOOLBOX := true
# include Logcat daemon for help in debugging
TWRP_INCLUDE_LOGCAT := true
TARGET_USERIMAGES_USE_F2FS
TARGET_PREBUILT_KERNEL
RECOVERY_TOUCHSCREEN_SWAP_XY 
RECOVERY_TOUCHSCREEN_FLIP_X
RECOVERY_TOUCHSCREEN_FLIP_Y
# device resolution - deprecated, use TW_THEME instead
DEVICE_RESOLUTION := 1920x1080
# 240x240 280x280 320x320
TW_THEME := watch_mdpi
# 320x480 480x800 480x854 540x960
TW_THEME := portrait_mdpi
# 720x1280 800x1280 1080x1920 1200x1920 1440x2560 1600x2560
TW_THEME := portrait_hdpi
# 800x480 1024x600 1024x768
TW_THEME := landscape_mdpi
# 1280x800 1920x1200 2560x1600
TW_THEME := landscape_hdpi
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
BOARD_SUPPRESS_EMMC_WIPE := true


