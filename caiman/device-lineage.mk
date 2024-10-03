DEVICE_PACKAGE_OVERLAYS += device/google/caimito/caiman/overlay-lineage

TARGET_VENDOR_PROP += device/google/caimito/caiman/vendor.prop

$(call inherit-product, device/google/caimito/device-lineage.mk)
