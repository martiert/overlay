# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python2_7 )

inherit distutils-r1 git-r3

DESCRIPTION="Mopidy extenstion for playing music from Spotify"
HOMEPAGE="http://www.mopidy.com"
EGIT_REPO_URI="https://github.com/mopidy/mopidy-spotify.git"
EGIT_COMMIT="v${PV}"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=">=media-libs/pyspotify-1.0.0
"
RDEPEND="${DEPEND}"
