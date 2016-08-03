# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy{1_8,1_9,2_0} )

inherit distutils-r1

DESCRIPTION="Flask SQLAlchemy single connection extension to run tests in a super transaction and rollback at teardown"
HOMEPAGE="https://github.com/Kozea/tears"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="GPL-3"
KEYWORDS="~amd64 ~x86"

SLOT="0"

RDEPEND="
    dev-python/flask-sqlalchemy[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"
