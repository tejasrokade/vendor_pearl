# Copyright (C) 2017 AospExtended ROM
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

PRODUCT_BRAND ?= Pearl

# Versioning System
# Lean version over here.
PRODUCT_VERSION_MAJOR = v1.0
PRODUCT_VERSION_MINOR = SparkyWhite
PEARL_POSTFIX := -$(shell date +"%Y%m%d")

ifndef PEARL_BUILD_TYPE
    PEARL_BUILD_TYPE := Unofficial
endif

ifdef PEARL_BUILD_EXTRA
    PEARL_POSTFIX := -$(PEARL_BUILD_EXTRA)
    PEARL_MOD_SHORT := PearlOS-$(PRODUCT_VERSION_MAJOR)-$(PEARL_BUILD)-$(PEARL_BUILD_TYPE)$(PEARL_POSTFIX)
else
    PEARL_MOD_SHORT := PearlOS-$(PRODUCT_VERSION_MAJOR)-$(PEARL_BUILD)-$(PEARL_BUILD_TYPE)
endif

PEARL_VERSION := PearlOS-$(PRODUCT_VERSION_MAJOR)-$(PEARL_BUILD)-$(PEARL_BUILD_TYPE)$(PEARL_POSTFIX)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
