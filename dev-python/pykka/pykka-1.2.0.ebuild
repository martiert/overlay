# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_4} )

inherit distutils-r1 git-r3

DESCRIPTION="A python implementation of the actor model"
HOMEPAGE="http://www.pykka.org"
EGIT_REPO_URI="https://github.com/jodal/pykka"
EGIT_COMMIT="v${PV}"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
