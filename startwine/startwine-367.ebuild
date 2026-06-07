# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v3

EAPI=8

DESCRIPTION="startwine"
HOMEPAGE="https://github.com/lIS217/${DESCRIPTION}"
SRC_URI="${HOMEPAGE}/releases/download/startwine/StartWine_v${PV}.tar.xz"
S="${WORKDIR}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

QA_PREBUILT="usr/bin/startwine"

DEPEND="app-arch/zstd
       media-gfx/imagemagick
       dev-util/vulkan-tools
       app-emulation/wine-vanilla
       x11-misc/xdg-user-dirs
       dev-python/pyopengl
       gui-libs/vte
       dev-python/numpy
       dev-python/pycairo
       dev-python/pillow
       dev-python/six
       app-arch/lz4
       sys-fs/squashfs-tools
       sys-fs/squashfuse"
RDEPEND="${DEPEND}"

src_prepare() {
    default

}

src_install() {
    newbin StartWine_v${PV} startwine
    newins - externalupdater <<<"${EPREFIX}/usr/bin/startwine"
}

pkg_postinst() {
    xdg_pkg_postinst
}
