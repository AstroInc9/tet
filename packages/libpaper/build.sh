TERMUX_PKG_HOMEPAGE=https://github.com/rrthomas/psutils
TERMUX_PKG_DESCRIPTION="Library for handling paper characteristics (by @rrthomas)"
TERMUX_PKG_LICENSE="LGPL-3.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="2.0.3"
TERMUX_PKG_SRCURL="https://github.com/rrthomas/libpaper/releases/download/v${TERMUX_PKG_VERSION}/libpaper-${TERMUX_PKG_VERSION}.tar.gz"
TERMUX_PKG_SHA256=7caec6f36d90a03b799431419251fe7315f1b2499da2916d3f8b2376295bd83d
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--sysconfdir=${TERMUX_PREFIX}/etc
--enable-relocatable
"
TERMUX_PKG_PROVIDES="paper"

termux_step_pre_configure() {
	# 210x297 (in mm) is A4 size. Use as default to be provided by locale.
	CFLAGS+=" -D_NL_PAPER_WIDTH=210 -D_NL_PAPER_HEIGHT=297"
}

termux_step_create_debscripts() {
	cat <<-EOF >./postinst
		#!${TERMUX_PREFIX}/bin/sh
		mkdir -p ${TERMUX_PREFIX}/etc/paper.d
	EOF
}
