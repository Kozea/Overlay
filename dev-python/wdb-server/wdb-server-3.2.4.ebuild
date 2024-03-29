# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="7"
PYTHON_COMPAT=( python3_{4,5,6,7} )

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
    =dev-python/wdb-${PV}*[${PYTHON_USEDEP}]
    >=www-servers/tornado-4.2[${PYTHON_USEDEP}]
    >=dev-python/psutil-2.1[${PYTHON_USEDEP}]
    >=dev-python/filemagic-1.6[${PYTHON_USEDEP}]
    dev-python/tornado-systemd[${PYTHON_USEDEP}]
    dev-python/pyinotify[${PYTHON_USEDEP}]"
