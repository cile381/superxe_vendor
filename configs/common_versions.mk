# Version information
PRODUCT_BUILD_PROP_OVERRIDES += \
	BUILD_DISPLAY_ID=KRT16M \
	BUILD_ID=KRT16M \
	BUILD_UTC_DATE=0

# Branding
SUPERXE_BUILD_VERSION = BUILD1
SUPERXE_VERSION_MAJOR = 4
SUPERXE_VERSION_MINOR = 0

PRODUCT_PROPERTY_OVERRIDES += \
    ro.mod.version=SuperXE-$(SUPERXE_VERSION_MAJOR).$(SUPERXE_VERSION_MINOR)-$(TARGET_PRODUCT)-$(SUPERXE_BUILD_VERSION)
