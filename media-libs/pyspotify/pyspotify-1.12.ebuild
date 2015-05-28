# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python2_7 )

inherit distutils-r1 git-r3

DESCRIPTION="Python bindings for libspotify"
HOMEPAGE="http://pyspotify/mopidy.com"
EGIT_REPO_URI="https://github.com/mopidy/pyspotify.git"
EGIT_COMMIT="v${PV}"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	<media-libs/libspotify-13.0
	>media-libs/libspotify-12.1
"
RDEPEND="${DEPEND}"
