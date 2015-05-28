# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python2_7 )

inherit distutils-r1 git-r3

DESCRIPTION="An extensible music server"
HOMEPAGE="http://mopidy.com/"
EGIT_REPO_URI="https://github.com/mopidy/mopidy.git"
EGIT_COMMIT="v${PV}"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="spotify alsa pulseaudio"

DEPEND="
	<media-libs/gstreamer-1.0
	<media-libs/gst-plugins-good-1.0
	<media-libs/gst-plugins-bad-1.0
	<media-libs/gst-plugins-ugly-1.0
	<dev-python/gst-python-1.0[${PYTHON_USEDEP}]
	www-servers/tornado[${PYTHON_USEDEP}]
	dev-python/pykka[${PYTHON_USEDEP}]
	spotify? ( media-sound/mopidy-spotify[${PYTHON_USEDEP}] )
	alsa? ( <media-plugins/gst-plugins-alsa-1.0 )
	pulseaudio? ( <media-plugins/gst-plugins-pulseaudio-1.0 )
"
RDEPEND="${DEPEND}"
