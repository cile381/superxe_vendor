#
# This policy configuration will be used by all products that
# inherit from SuperNexus
#

BOARD_SEPOLICY_DIRS += \
    vendor/supernexus/sepolicy

BOARD_SEPOLICY_UNION += \
    file.te \
    file_contexts \
    fs_use \
    genfs_contexts \
    installd.te \
    vold.te \
    mac_permissions.xml