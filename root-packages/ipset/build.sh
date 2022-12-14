TERMUX_PKG_HOMEPAGE=https://ipset.netfilter.org
TERMUX_PKG_DESCRIPTION="Administration tool for kernel IP sets"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="Vishal Biswas @vishalbiswas"
TERMUX_PKG_VERSION=7.6
TERMUX_PKG_SRCURL=https://ipset.netfilter.org/ipset-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=0e7d44caa9c153d96a9b5f12644fbe35a632537a5a7f653792b72e53d9d5c2db
TERMUX_PKG_DEPENDS="libmnl, libltdl"
TERMUX_PKG_BREAKS="ipset-dev"
TERMUX_PKG_REPLACES="ipset-dev"
TERMUX_PKG_BUILD_DEPENDS="libtool"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--with-kmod=no
"
