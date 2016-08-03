# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

DESCRIPTION="Git for Usain Bolt"
HOMEPAGE="http://kozea.fr"
SRC_URI=""

LICENSE="Proprietary"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-python/flask[${PYTHON_USEDEP}]
	dev-python/github-flask[${PYTHON_USEDEP}]
	dev-python/CacheControl[${PYTHON_USEDEP}]
	dev-python/python-dateutil[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"
