# Generic product
PRODUCT_NAME := pearl
PRODUCT_BRAND := pearl
PRODUCT_DEVICE := generic

 EXCLUDE_SYSTEMUI_TESTS := true

 # version
include vendor/pearl/config/version.mk

 # Props
include vendor/pearl/config/pearl_props.mk

 # Packages
include vendor/pearl/config/packages.mk
