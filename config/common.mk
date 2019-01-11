# Lemon version
LEMON_VERSION := Pie

LEMON_DISPLAY_VERSION := Lemon$(LEMON_VERSION)

# Ambient Play
PRODUCT_PACKAGES += \
    AmbientPlayHistoryProvider

# AOSP packages
PRODUCT_PACKAGES += \
    messaging \
    Terminal

# Chromium
PRODUCT_PACKAGES += \
    Chromium

# Google Packages
PRODUCT_PACKAGES += \
    SoundPickerPrebuilt

# LineageOS apps
PRODUCT_PACKAGES += \
    Exchange \
    Eleven \
    Jelly \
    Stk \
    Updater

# OmniROM apps
PRODUCT_PACKAGES += \
    OmniClockOSS \
    OmniJaws \
    OmniRecord \
    OmniStyle \
    OmniSwitch

# Poor Man Themes
PRODUCT_PACKAGES += \
    NotificationsDark \
    NotificationsLight \
    NotificationsPrimary

PRODUCT_PACKAGES += \
    AccentSluttyPink \
    AccentPixel \
    AccentGoldenShower \
    AccentDeepOrange \
    AccentOmni \
    AccentWhite \
    AccentTeal \
    AccentFromHell \
    AccentBlueMonday \
    AccentSmokingGreen \
    AccentDeadRed \
    AccentRottenOrange \
    AccentDeepPurple

PRODUCT_PACKAGES += \
    PrimaryAlmostBlack \
    PrimaryBlack \
    PrimaryOmni \
    PrimaryWhite \
    PrimaryColdWhite \
    PrimaryWarmWhite \
    PrimaryDarkBlue

PRODUCT_PACKAGES += \
    DocumentsUITheme \
    DialerTheme \
    TelecommTheme

# Overlays
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/lemon/overlay/common

# Include explicitly to work around GMS issues
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full \
    librsjni

# LineageOS tools
PRODUCT_PACKAGES += \
    7z \
    bash \
    curl \
    htop \
    lib7z \
    rsync \
    unrar \
    unzip \
    vim \
    zip

# Additional tools
PRODUCT_PACKAGES += \
    mkshrc_vendor \
    toybox_vendor \
    sh_vendor

# Init scripts
PRODUCT_COPY_FILES += \
    vendor/lemon/prebuilt/etc/init/init.common.rc:system/etc/init/init.common.rc

# Bootanimation
PRODUCT_COPY_FILES += \
    vendor/lemon/prebuilt/media/bootanimation.zip:system/media/bootanimation.zip

# Fonts
PRODUCT_COPY_FILES += \
    vendor/lemon/fonts/GoogleSans-Regular.ttf:system/fonts/GoogleSans-Regular.ttf \
    vendor/lemon/fonts/GoogleSans-Medium.ttf:system/fonts/GoogleSans-Medium.ttf \
    vendor/lemon/fonts/GoogleSans-MediumItalic.ttf:system/fonts/GoogleSans-MediumItalic.ttf \
    vendor/lemon/fonts/GoogleSans-Italic.ttf:system/fonts/GoogleSans-Italic.ttf \
    vendor/lemon/fonts/GoogleSans-Bold.ttf:system/fonts/GoogleSans-Bold.ttf \
    vendor/lemon/fonts/GoogleSans-BoldItalic.ttf:system/fonts/GoogleSans-BoldItalic.ttf

# World APN list
PRODUCT_COPY_FILES += \
    vendor/lemon/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# Sensitive Phone Numbers list
PRODUCT_COPY_FILES += \
    vendor/lemon/prebuilt/etc/sensitive_pn.xml:system/etc/sensitive_pn.xml

# Permissions
PRODUCT_COPY_FILES += \
    vendor/lemon/prebuilt/etc/permissions/privapp-permissions-elgoog.xml:system/etc/permissions/privapp-permissions-elgoog.xml \
    vendor/lemon/prebuilt/etc/permissions/privapp-permissions-lemon.xml:system/etc/permissions/privapp-permissions-lemon.xml \
    vendor/lemon/prebuilt/etc/permissions/lemon-power-whitelist.xml:system/etc/permissions/lemon-power-whitelist.xml

# mkshrc
PRODUCT_COPY_FILES += \
    vendor/lemon/prebuilt/etc/mkshrc:system/etc/mkshrc

# Filesystems tools
PRODUCT_PACKAGES += \
    fsck.exfat \
    fsck.ntfs \
    mke2fs \
    mkfs.exfat \
    mkfs.ntfs \
    mount.ntfs

# Allow tethering without provisioning app
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true

# Thank you, please drive thru!
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.dun.override=0

# Google property overides
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dataroaming=false \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.setupwizard.rotation_locked=true

# Security Enhanced Linux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# SetupWizard
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.rotation_locked=true

# Telephony extension
PRODUCT_PACKAGES += \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# Do not include art debug targets
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false

# Strip the local variable table and the local variable type table to reduce
# the size of the system image. This has no bearing on stack traces, but will
# leave less information available via JDWP.
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true
