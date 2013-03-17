# Press4connect
# Copyright 2013 Koen Bollen <meneer@koenbollen.nl> and David Menting <david@nut-bolt.nl>
#
# Licensed under the MIT License

include $(TOPDIR)/rules.mk

PKG_NAME:=press4connect
PKG_VERSION:=1
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/press4connect
  #SECTION:=luci
  #CATEGORY:=LuCI
  #SUBMENU:=9. Themes
  DEPENDS:=+luasocket
  TITLE:=Press4connect
  URL:=http://github.com/nutbolt/press4connect
  PKGARCH:=all
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/press4connect/install
	#$(INSTALL_DIR) $(1)/etc/uci-defaults
	#echo "uci set luci.themes.$(THEME_TITLE)=/luci-static/$(THEME_NAME); uci commit luci" > $(1)/etc/uci-defaults/luci-theme-$(THEME_NAME)
	#$(INSTALL_DIR) $(1)/www/luci-static/$(THEME_NAME)
	#$(CP) -a ./files/htdocs/* $(1)/www/luci-static/$(THEME_NAME)/ 2>/dev/null || true
	#$(INSTALL_DIR) $(1)/usr/lib/lua/luci/view/themes/$(THEME_NAME)
	#$(CP) -a ./files/templates/* $(1)/usr/lib/lua/luci/view/themes/$(THEME_NAME)/ 2>/dev/null || true
endef

define Package/press4connect/postinst
#!/bin/sh
#[ -n "$${IPKG_INSTROOT}" ] || {
#	( . /etc/uci-defaults/luci-theme-$(THEME_NAME) ) && rm -f /etc/uci-defaults/luci-theme-$(THEME_NAME)
#}
endef

$(eval $(call BuildPackage,press4connect))
