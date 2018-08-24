# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python3_{4,5,6,7} )

inherit distutils-r1

MY_PN="SQLAlchemy-Utils"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Various utility functions for SQLAlchemy"
HOMEPAGE="https://github.com/kvesteri/sqlalchemy-utils"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	>=dev-python/sqlalchemy-0.9.3[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"

S="${WORKDIR}/${MY_P}"
