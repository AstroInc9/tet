TERMUX_PKG_HOMEPAGE=https://docs.xfce.org/panel-plugins/xfce4-places-plugin/start
TERMUX_PKG_DESCRIPTION="This plugin brings much of the functionality of GNOME Places menu to Xfce"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="Yisus7u7 <dev.yisus@hotmail.com>"
_MAJOR_VERSION=1.8
TERMUX_PKG_VERSION=${_MAJOR_VERSION}.2
TERMUX_PKG_SRCURL=https://archive.xfce.org/src/panel-plugins/xfce4-places-plugin/${_MAJOR_VERSION}/xfce4-places-plugin-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=1e32b2aa14ddd6e145d506dad16d7ebdfa2d378cf652d9d0d066fe1d523b7001
TERMUX_PKG_DEPENDS="atk, exo, gdk-pixbuf, glib, gtk3, harfbuzz, libcairo, libice, libnotify, libsm, libx11, libxfce4ui, libxfce4util, pango, xfce4-panel, xfconf"
TERMUX_PKG_BUILD_IN_SRC=true
