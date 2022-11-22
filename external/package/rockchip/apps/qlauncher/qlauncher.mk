################################################################################
#
# qlauncher
#
################################################################################

QLAUNCHER_VERSION = 1.0
QLAUNCHER_SITE = $(BR2_EXTERNAL_RK3588_PATH)/app/QLauncher
QLAUNCHER_SITE_METHOD = local

QLAUNCHER_LICENSE = ROCKCHIP
QLAUNCHER_LICENSE_FILES = LICENSE

# TODO: Add install rules in .pro
define QLAUNCHER_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/QLauncher $(TARGET_DIR)/usr/bin/QLauncher
endef

define QLAUNCHER_INSTALL_INIT_SYSV
# This file 'S50launcher' is overwritten in the folder 'board overlay'
# $(INSTALL) -D -m 755 $(QLAUNCHER_PKGDIR)/S50launcher $(TARGET_DIR)/etc/init.d/S50launcher
endef

$(eval $(qmake-package))
