################################################################################
#
# vision app console version 
#
################################################################################


VISION_CLI_SITE = $(BR2_EXTERNAL_RK3588_PATH)/app/vision_console
VISION_CLI_SITE_METHOD = local
VISION_CLI_LICENSE = Apache-2.0
VISION_CLI_LICENSE_FILES = LICENSE.md

VISION_CLI_INSTALL_STAGING = YES
VISION_CLI_INSTALL_TARGET = NO

VISION_CLI_DEPENDENCIES = libglib2 host-pkgconf

VISION_CLI_TARGET_INSTALL_DIR = $(TARGET_DIR)



$(eval $(cmake-package))
#$(eval $(host-generic-package))

