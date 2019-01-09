#Pearl version.
PRODUCT_VERSION_MAJOR = 9.0
PRODUCT_VERSION_MAINTENANCE = SparkyWhite
PEARL_POSTFIX := $(shell date +"%Y%m%d")
PEARL_BUILD_EXTRA := By-Team-Pearl

#UNOFFICIAL
ifndef PEARL_BUILD_TYPE
    PEARL_BUILD_TYPE := UNOFFICIAL
endif

# Beta Tag
ifeq ($(PEARL_BETA),true)
    PEARL_BUILD_TYPE := BETA
endif

# Alpha Tag
ifeq ($(PEARL_ALPHA),true)
   PEARL_BUILD_TYPE := ALPHA
endif

# Specific Official Tag
CURRENT_DEVICE=$(shell echo "$(TARGET_PRODUCT)" | cut -d'_' -f 2,3)

ifeq ($(PEARL_OFFICIAL),true)
   LIST = $(shell curl -s https://raw.githubusercontent.com/PearlOS/vendor_pearl/pie/pearl.devices)
   FOUND_DEVICE = $(filter $(CURRENT_DEVICE), $(LIST))
   ifeq ($(FOUND_DEVICE),$(CURRENT_DEVICE))
      IS_OFFICIAL=true
      PEARL_BUILD_TYPE := OFFICIAL
   else
      PEARL_BUILD_TYPE := UNOFFICIAL
   endif
endif

# Set all versions
PEARL_VERSION := PearlOS-$(PEARL_BUILD)-$(PRODUCT_VERSION_MAINTENANCE)-$(PEARL_BUILD_TYPE)-$(PEARL_POSTFIX)
PEARL_MOD_VERSION := PearlOS-$(PEARL_BUILD)-$(PRODUCT_VERSION_MAINTENANCE)-$(PEARL_BUILD_TYPE)-$(PEARL_POSTFIX)
PEARL_XTRA_VERSION := $(PRODUCT_VERSION_MAINTENANCE)-$(PEARL_BUILD_TYPE)
PEARL_DISPLAY_VERSION := $(PEARL_XTRA_VERSION)

PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    pearl.ota.version=$(PRODUCT_VERSION_MAJOR)-$(PRODUCT_VERSION_MAINTENANCE) \
    ro.pearl.version=$(PEARL_XTRA_VERSION) \
    ro.modversion=$(PEARL_MOD_VERSION) \
    ro.pearl.buildtype=$(PEARL_BUILD_TYPE) \
    ro.pearl.display.version=$(PEARL_DISPLAY_VERSION) \
    com.pearl.fingerprint=$(PEARL_XTRA_VERSION)
