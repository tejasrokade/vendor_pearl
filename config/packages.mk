
# Copyright (C) 2018 The PearlOS-Project
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
# Required packages
PRODUCT_PACKAGES += \
    Gallery2 \
    LatinIME \
    Launcher3 \
    LeanLauncher \
    LiveWallpapers \
    LiveWallpapersPicker \
    messaging \
    WellbeingPrebuilt \
    WallpaperPickerGoogle \
    Snap \
    ShellExtras \
    AboutUs \
    OmniStyle

#ifeq ($(AOSIP_BUILDTYPE), Official)
#    PRODUCT_PACKAGES += \
#        Updater
#endif

 # Required packages
PRODUCT_PACKAGES += \
    BluetoothExt \
    Calendar \
    Dialer \
    ExactCalculator \
    LatinIME \
    Launcher3QuickStep \
    messaging \
    Stk \
    WeatherClient

#Themes
PRODUCT_PACKAGES += \
    BlackThemeAndroidOverlay \
    BlackThemeSettingsOverlay \
    DarkThemeAndroidOverlay \
    DarkThemeSettingsOverlay

# Omni Poor Man Themes
PRODUCT_PACKAGES += \
    DocumentsUITheme \
    DialerTheme \
    TelecommTheme

PRODUCT_PACKAGES += \
    NotificationsBlack \
    NotificationsDark \
    NotificationsLight \
    NotificationsPrimary

PRODUCT_PACKAGES += \
    AccentSluttyPink \
    AccentPixel \
    AccentGoldenShower \
    AccentDeepOrange \
    AccentMisticBrown \
    AccentOmni \
    AccentWhite \
    AccentTeal \
    AccentFromHell \
    AccentBlueMonday \
    AccentSmokingGreen \
    AccentDeadRed \
    AccentRottenOrange \
    AccentDeepPurple \
    AccentBlackMagic \
    AccentCandyRed \
    AccentJadeGreen \
    AccentPaleBlue \
    AccentPaleRed \
    AccentObfusBleu \
    AccentNotImpPurple \
    AccentHolillusion \
    AccentMoveMint \
    AccentFootprintPurple \
    AccentBubblegumPink \
    AccentFrenchBleu \
    AccentManiaAmber \
    AccentSeasideMint \
    AccentDreamyPurple \
    AccentSpookedPurple \
    AccentHeirloomBleu \
    AccentTruFilPink \
    AccentWarmthOrange \
    AccentColdBleu \
    AccentDiffDayGreen \
    AccentDuskPurple \
    AccentBurningRed \
    AccentHazedPink \
    AccentColdYellow \
    AccentNewHouseOrange \
    AccentIllusionsPurple

PRODUCT_PACKAGES += \
    PrimaryAlmostBlack \
    PrimaryBlack \
    PrimaryOmni \
    PrimaryWhite \
    PrimaryColdWhite \
    PrimaryWarmWhite \
    PrimaryDarkBlue

# QS tile styles
PRODUCT_PACKAGES += \
    QStileCircleTrim \
    QStileDefault \
    QStileDualToneCircle \
    QStileSquircleTrim

# Turbo
PRODUCT_PACKAGES += \
    Turbo \
    turbo.xml \
    privapp-permissions-turbo.xml

 # Extra tools
PRODUCT_PACKAGES += \
    7z \
    bash \
    bzip2 \
    curl \
    e2fsck \
    fsck.ntfs \
    gdbserver \
    htop \
    lib7z \
    libsepol \
    micro_bench \
    mke2fs \
    mkfs.ntfs \
    mount.ntfs \
    nano \
    openvpn \
    oprofiled \
    pigz \
    powertop \
    sqlite3 \
    strace \
    tune2fs \
    unrar \
    unzip \
    vim \
    wget \
    zip

 # Exchange support
PRODUCT_PACKAGES += \
    Exchange2

 # exFAT tools
 PRODUCT_PACKAGES += \
    fsck.exfat \
    mkfs.exfat

 # Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

 # rsync
PRODUCT_PACKAGES += \
    rsync

 # Include explicitly to work around GMS issues
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full \
    librsjni

 # These packages are excluded from user builds
ifneq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_PACKAGES += \
    procmem \
    procrank
endif

 # Charger images
PRODUCT_PACKAGES += \
    charger_res_images

# Sysconfig
PRODUCT_COPY_FILES += \
    vendor/pearl/prebuilt/common/etc/sysconfig/google-hiddenapi-package-whitelist.xml:system/etc/sysconfig/google-hiddenapi-package-whitelist.xml \
    vendor/pearl/prebuilt/common/etc/sysconfig/pixel.xml:system/etc/sysconfig/pixel.xml

# Weather
PRODUCT_COPY_FILES +=  \
    vendor/pearl/prebuilt/common/etc/sysconfig/org.pixelexperience.weather.client.xml:system/etc/sysconfig/org.pixelexperience.weather.client.xml \
    vendor/pearl/prebuilt/common/etc/permissions/org.pixelexperience.weather.client.xml:system/etc/default-permissions/org.pixelexperience.weather.client.xml

PRODUCT_PROPERTY_OVERRIDES += \
    org.pixelexperience.weather.revision=2

#Font package
PRODUCT_PACKAGES += \
    Custom-Fonts
