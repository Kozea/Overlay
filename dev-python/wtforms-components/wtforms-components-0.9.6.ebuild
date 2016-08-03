# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python3_{3,4,5} )

inherit distutils-r1

MY_PN="WTForms-Components"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Additional fields, validators and widgets for WTForms"
HOMEPAGE="https://github.com/kvesteri/wtforms-components"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	>=dev-python/wtforms-1.0.4[${PYTHON_USEDEP}]
	>=dev-python/sqlalchemy-utils-0.23[${PYTHON_USEDEP}]
	>=dev-python/six-1.4.1[${PYTHON_USEDEP}]
	>=dev-python/validators-0.5[${PYTHON_USEDEP}]
	>=dev-python/intervals-0.2[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"

S="${WORKDIR}/${MY_P}"
