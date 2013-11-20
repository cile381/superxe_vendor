# Common superxe overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/superxe/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/superxe/overlay/dictionaries

# Common product property overrides
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# Enable SELinux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Enable ADB authentication
ifneq ($(TARGET_BUILD_VARIANT),eng)
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=1
endif

# SELinux filesystem labels
PRODUCT_COPY_FILES += \
    vendor/superxe/prebuilt/common/etc/init.d/50selinuxrelabel:system/etc/init.d/50selinuxrelabel

# init.d support
PRODUCT_COPY_FILES += \
    vendor/superxe/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/superxe/prebuilt/common/bin/sysinit:system/bin/sysinit

# userinit support
PRODUCT_COPY_FILES += \
    vendor/superxe/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit

# superxe-specific init file
PRODUCT_COPY_FILES += \
    vendor/superxe/prebuilt/common/etc/init.local.rc:root/init.local.rc

# Enable SIP+VoIP
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/superxe/prebuilt/common/etc/mkshrc:system/etc/mkshrc

# Required superxe Packages
PRODUCT_PACKAGES += \
    SoundRecorder \
    Basic \
    libemoji

# OpenSSH
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

# Extra tools
PRODUCT_PACKAGES += \
    openvpn \
    bash \
    nano \
    e2fsck \
    mke2fs \
    tune2fs \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    ntfsfix \
    ntfs-3g

# Inherit common superxe SELinux Policies
-include vendor/superxe/sepolicy/sepolicy.mk

# Inherit common product build prop overrides
-include vendor/superxe/configs/common_versions.mk
