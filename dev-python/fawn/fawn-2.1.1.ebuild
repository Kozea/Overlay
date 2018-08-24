# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

PYTHON_COMPAT=( python{2_7,3_4,3_5,3_6,3_7} )

inherit distutils-r1

DESCRIPTION="flask async uwsgi websocket postgresql notify"
HOMEPAGE="https://github.com/paradoxxxzero/fawn/blob/master/setup.py"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/flask[${PYTHON_USEDEP}]
    dev-python/sqlalchemy[${PYTHON_USEDEP}]
    >=dev-python/psycopg-2[${PYTHON_USEDEP}]
    www-servers/uwsgi[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
