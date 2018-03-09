# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

PYTHON_COMPAT=( python3_{4,5,6} )

inherit distutils-r1

DESCRIPTION="Provides fulltext search capabilities for declarative SQLAlchemy models."
HOMEPAGE="http://pypi.python.org/pypi/${PN}"
SRC_URI="https://pypi.python.org/packages/50/03/7d9c0cbafccd29a2ed48cfa6fe0b8de1d9a7798b09db89b7aff0098779e2/SQLAlchemy-Searchable-1.0.3.tar.gz"

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
S="${WORKDIR}/${P}"

