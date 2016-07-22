# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

DESCRIPTION="Create and store reveal.js-based slideshows in the cloud"
HOMEPAGE="https://github.com/Kozea/bobslide"
SRC_URI=""

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-python/flask
	dev-python/flask-weasyprint"
DEPEND="${RDEPEND}"
