# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python{2_5,2_6,2_7,3_1,3_2,3_3} )

inherit distutils-r1

MY_PN=PyRSS2Gen
MY_P=${MY_PN}-${PV}

DESCRIPTION="Generate RSS2 using a Python data structure"
HOMEPAGE="http://dalkescientific.com/Python/PyRSS2Gen.html"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86 ~x86-fbsd"

S="${WORKDIR}/${MY_P}"

