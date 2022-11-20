################################################################################
#
# rockit project
#
################################################################################

ROCKIT_SITE = $(BR2_EXTERNAL_RK3588_PATH)/bsp/rockit

ROCKIT_SITE_METHOD = local

ROCKIT_INSTALL_STAGING = YES

$(eval $(cmake-package))
