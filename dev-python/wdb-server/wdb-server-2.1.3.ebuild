# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
PYTHON_COMPAT=( python3_{3,4} )

MY_PN="wdb.server"
MY_P="${MY_PN}-${PV}"

inherit distutils-r1

DESCRIPTION="An improbable web debugger through WebSockets"
HOMEPAGE="https://github.com/Kozea/${MY_PN}"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

S="${WORKDIR}/${MY_P}"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
    =dev-python/wdb-2.1.1*
    >=www-servers/tornado-3.2
    >=dev-python/log-colorizer-1.6
    >=dev-python/jedi-0.9
    >=dev-python/psutil-2.1
    >=dev-python/filemagic-1.6
    dev-python/tornado-systemd
    dev-python/pyinotify"
