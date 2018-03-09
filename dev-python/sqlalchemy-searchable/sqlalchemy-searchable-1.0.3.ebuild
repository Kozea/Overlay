# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

PYTHON_COMPAT=( python3_{4,5,6} )

inherit distutils-r1

MY_PN="SQLAlchemy-Searchable"
MY_P="${MY_PN}-${PV}"
DESCRIPTION="Provides fulltext search capabilities for declarative SQLAlchemy models."
HOMEPAGE="http://pypi.python.org/pypi/${PN}"
SRC_URI="mirror://pypi/${MY_P:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""

DEPEND="
    dev-python/setuptools[${PYTHON_USEDEP}]
"
RDEPEND="
    >=dev-python/sqlalchemy-0.9.0[${PYTHON_USEDEP}]
    >=dev-python/sqlalchemy-utils-0.29.0[${PYTHON_USEDEP}]
    >=dev-python/validators-0.3.0[${PYTHON_USEDEP}]
"
S="${WORKDIR}/${MY_P}"
