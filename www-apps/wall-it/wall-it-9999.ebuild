# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

DESCRIPTION=""
HOMEPAGE="http://kozea.fr"
SRC_URI=""

LICENSE="Public Domain"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-lang/python[sqlite]
	dev-python/flask
	dev-python/pygal
	dev-python/oauth2client
	dev-python/httplib2"
DEPEND="${RDEPEND}"
