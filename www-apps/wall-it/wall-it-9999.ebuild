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
	dev-lang/python[sqlite,${PYTHON_USEDEP}]
	dev-python/flask[${PYTHON_USEDEP}]
	dev-python/weasyprint[${PYTHON_USEDEP}]
	dev-python/pygal[${PYTHON_USEDEP}]
	dev-python/oauth2client[${PYTHON_USEDEP}]
	dev-python/httplib2[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"
