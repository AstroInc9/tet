TERMUX_PKG_HOMEPAGE=https://xorg.freedesktop.org/
TERMUX_PKG_DESCRIPTION="X11 font rasterisation library"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=2.0.6
TERMUX_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/lib/libXfont2-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=74ca20017eb0fb3f56d8d5e60685f560fc85e5ff3d84c61c4cb891e40c27aef4
TERMUX_PKG_DEPENDS="freetype, libfontenc, zlib"
TERMUX_PKG_BUILD_DEPENDS="xorgproto, xorg-util-macros, xtrans"
