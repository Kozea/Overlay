# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7,3_1,3_2,3_3} pypy{1_8,1_9,2_0} )

inherit distutils-r1

MY_PN="EasyProcess"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Python wrapper for Xvfb, Xephyr and Xvnc"
HOMEPAGE="https://github.com/ponty/EasyProcess"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="BSD"
KEYWORDS="~amd64 ~x86"

SLOT="0"
RDEPEND=""
DEPEND="${RDEPEND}"

S="${WORKDIR}/${MY_P}"
