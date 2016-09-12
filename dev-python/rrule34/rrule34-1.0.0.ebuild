# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6
PYTHON_COMPAT=( python{3_4,3_5} )

inherit distutils-r1

DESCRIPTION="Noticeably natural language formatting of recurences."
HOMEPAGE="https://pypi.python.org/pypi/rrule34"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-python/python-dateutil[${PYTHON_USEDEP}]
	dev-python/Babel[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
