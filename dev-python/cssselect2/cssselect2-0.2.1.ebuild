# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=7

PYTHON_COMPAT=( python{2_7,3_4,3_5,3_6,3_7} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="CSS selectors for Python ElementTree"
HOMEPAGE="https://github.com/Kozea/cssselect2"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="dev-python/tinycss2[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"

DOCS=( CHANGES README.rst )
