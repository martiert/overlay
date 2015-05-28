# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils

DESCRIPTION="The libspotify C API package allows thid party developers to write applications that utilize the Spotify music streaming service."
HOMEPAGE="http://developer.spotify.com/en/libspotify/overview"

ARCHITECTURE=${ARCH/x86/i686}
ARCHITECTURE=${ARCHITECTURE/amd64/x86_64}
PACKAGE_NAME="${P}-Linux-${ARCHITECTURE}-release"
S="${WORKDIR}/${PACKAGE_NAME}"

SRC_URI="http://developer.spotify.com/download/libspotify/${PACKAGE_NAME}.tar.gz"

LICENSE="Spotify"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="doc"

DEPEND=""
RDEPEND="${DEPEND}"

src_compile() {
	:
}

src_install() {
	epatch "${FILESDIR}/ldconfig-no-cache.patch"
	emake prefix="${D}/${DESTTREE}" install || die
	dodoc README ChangeLog
	if use doc; then
		mkdir -p "${D}/${DESTTREE}/share/main" || die
		cp -r share/man3 "${D}/${DESTTREE}/share/man/" || die
		cd share/doc/libspotify || die
		mkdir -p "${D}/${DESTTREE}/share/doc/libspotify" || die
		cp -r html images examples "${D}/${DESTTREE}/share/doc/libspotify" || die
	fi
}
