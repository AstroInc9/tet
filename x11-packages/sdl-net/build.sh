TERMUX_PKG_HOMEPAGE=https://www.libsdl.org/projects/SDL_net/
TERMUX_PKG_DESCRIPTION="A small sample cross-platform networking library"
TERMUX_PKG_LICENSE="ZLIB"
TERMUX_PKG_MAINTAINER="@termux"
_COMMIT=091c95c031769f48d3ffaacddfdea1af999f4446
_COMMIT_DATE=20221010
TERMUX_PKG_VERSION=1.2.8-p${_COMMIT_DATE}
TERMUX_PKG_SRCURL=https://github.com/libsdl-org/SDL_net.git
TERMUX_PKG_GIT_BRANCH=SDL-1.2
TERMUX_PKG_DEPENDS="sdl"
TERMUX_PKG_CONFLICTS="libsdl-net"
TERMUX_PKG_REPLACES="libsdl-net"

termux_step_post_get_source() {
	git fetch --unshallow
	git checkout $_COMMIT

	local pdate="p$(git log -1 --format=%cs | sed 's/-//g')"
	if [[ "$TERMUX_PKG_VERSION" != *"${pdate}" ]]; then
		echo -n "ERROR: The version string \"$TERMUX_PKG_VERSION\" is"
		echo -n " different from what is expected to be; should end"
		echo " with \"${pdate}\"."
		return 1
	fi
}
