# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

DESCRIPTION="Oh nice!"
HOMEPAGE="http://kozea.fr"
SRC_URI=""

LICENSE="Public domain"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
        dev-python/flask[${PYTHON_USEDEP}]
        dev-python/flask-sqlalchemy[${PYTHON_USEDEP}]
        dev-python/oauth2client[${PYTHON_USEDEP}]
        dev-python/httplib2[${PYTHON_USEDEP}]
        dev-python/sqlalchemy[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"
