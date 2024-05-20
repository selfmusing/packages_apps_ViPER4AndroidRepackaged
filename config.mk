VENDOR_PATH := vendor/ViPER4AndroidFXRepackaged

DEVICE_PACKAGE_OVERLAYS += $(VENDOR_PATH)/overlay-viper

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(VENDOR_PATH)/vendor,vendor)

PRODUCT_PACKAGES += \
    ViPER4AndroidFX

# Time to relax
RELAX_USES_LIBRARY_CHECK := true
