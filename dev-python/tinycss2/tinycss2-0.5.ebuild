# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5,3_6} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="A complete yet simple CSS parser for Python"
HOMEPAGE="https://github.com/SimonSapin/tinycss/ http://packages.python.org/tinycss/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=">=dev-python/webencodings-0.4[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"

DOCS=( CHANGES README.rst )
