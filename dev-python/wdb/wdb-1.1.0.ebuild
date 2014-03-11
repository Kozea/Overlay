# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
PYTHON_COMPAT=( python3_3 )

inherit distutils-r1

DESCRIPTION="An improbable web debugger through WebSockets"
HOMEPAGE="https://github.com/Kozea/${PN}"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
    www-servers/tornado
    dev-python/log-colorizer
    dev-python/jedi
    dev-python/filemagic"
