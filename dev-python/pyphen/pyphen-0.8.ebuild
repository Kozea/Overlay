# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7,3_1,3_2,3_3} pypy{1_8,1_9,2_0} )

inherit distutils-r1

MY_PN="Pyphen"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Pure Python module to hyphenate text"
HOMEPAGE="http://pypi.python.org/pypi/Pyphen"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="LGPL-2.1"
KEYWORDS="~amd64 ~x86"

SLOT="0"
RDEPEND=""
DEPEND="${RDEPEND}"

S="${WORKDIR}/${MY_P}"
