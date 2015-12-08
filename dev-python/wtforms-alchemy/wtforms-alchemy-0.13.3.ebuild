# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python3_{3,4} )

inherit distutils-r1

MY_PN="WTForms-Alchemy"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Generates WTForms forms from SQLAlchemy models"
HOMEPAGE="https://github.com/kvesteri/wtforms-alchemy"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	>=dev-python/sqlalchemy-0.8
	>=dev-python/wtforms-1.0.4
	>=dev-python/wtforms-components-0.9.2
	>=dev-python/sqlalchemy-utils-0.23.1
	>=dev-python/six-1.4.1"
DEPEND=""

S="${WORKDIR}/${MY_P}"
