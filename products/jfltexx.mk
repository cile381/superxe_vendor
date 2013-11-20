# Inherit AOSP device configuration.
$(call inherit-product, device/samsung/jfltexx/full_jfltexx.mk)

# Inherit common product files.
$(call inherit-product, vendor/superxe/configs/common.mk)

# Inherit GSM files.
$(call inherit-product, vendor/superxe/configs/common_phone.mk)

# Setup device specific product configuration.
PRODUCT_NAME := jfltexx
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := jfltexx
PRODUCT_MODEL := GT-I9505
PRODUCT_MANUFACTURER := samsung


# Bootanimation
PRODUCT_COPY_FILES += \
    vendor/superxe/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip
