# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from device
$(call inherit-product, device/T-Mobile/S98122AA1/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := S98122AA1
PRODUCT_NAME := omni_S98122AA1
PRODUCT_BRAND := T-Mobile
PRODUCT_MODEL := TMAF025G
PRODUCT_MANUFACTURER := T-Mobile
PRODUCT_RELEASE_NAME := T-Mobile-TMA025G
