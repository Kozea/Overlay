# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
PYTHON_COMPAT=( python{2_5,2_6,2_7,3_1,3_2,3_3} pypy{1_8,1_9} jython2_5 )
inherit distutils-r1

DESCRIPTION="Momoko wraps Psycopg2‘s functionality for use in Tornado."
HOMEPAGE="http://momoko.61924.nl/en/latest/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
