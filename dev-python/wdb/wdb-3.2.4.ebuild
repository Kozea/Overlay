# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="7"
PYTHON_COMPAT=( python3_{4,5,6,7} )

inherit distutils-r1

DESCRIPTION="An improbable web debugger through WebSockets"
HOMEPAGE="https://github.com/Kozea/${PN}"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
    dev-python/uncompyle6[${PYTHON_USEDEP}]
    >=dev-python/log-colorizer-1.6[${PYTHON_USEDEP}]
    >=dev-python/jedi-0.9[${PYTHON_USEDEP}]"
