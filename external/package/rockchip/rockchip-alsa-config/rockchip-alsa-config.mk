################################################################################
#
# rockchip-alsa-config
#
################################################################################

ROCKCHIP_ALSA_CONFIG_VERSION = 1.0
ROCKCHIP_ALSA_CONFIG_SITE = $(BR2_EXTERNAL_RK3588_PATH)/bsp/alsa-config
ROCKCHIP_ALSA_CONFIG_SITE_METHOD = local

ROCKCHIP_ALSA_CONFIG_LICENSE = Apache-2.0
ROCKCHIP_ALSA_CONFIG_LICENSE_FILES = NOTICE

$(eval $(meson-package))
