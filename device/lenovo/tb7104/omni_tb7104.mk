# Inherit from those market standard android products
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from OmniROM common configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from our custom BoardConfig Configuration
$(call inherit-product, device/lenovo/tb7104/BoardConfig.mk)

# Product Information configurations
PRODUCT_DEVICE := tb7104
PRODUCT_NAME := omni_tb7104
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo Tab E7
PRODUCT_MANUFACTURER := lenovo

# Platform configuration for MediaTek
PRODUCT_PLATFORM := mt8167
