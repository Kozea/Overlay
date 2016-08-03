# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python2_7 python3_{4,5} )

inherit distutils-r1

DESCRIPTION="Your Modern Continous Integration server"
HOMEPAGE="git://github.com/Kozea/${PN}.git"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
        dev-python/tornado-systemd[${PYTHON_USEDEP}]
        dev-python/pyyaml[${PYTHON_USEDEP}]
        dev-python/wtforms[${PYTHON_USEDEP}]
        dev-python/sqlalchemy[${PYTHON_USEDEP}]
        dev-python/psycopg[${PYTHON_USEDEP}]
        dev-python/wtforms-alchemy[${PYTHON_USEDEP}]
        dev-python/pbkdf2[${PYTHON_USEDEP}]
        dev-python/pygal[${PYTHON_USEDEP}]
        >=dev-python/pygments-2.0_pre[${PYTHON_USEDEP}]
        dev-python/simplepam[${PYTHON_USEDEP}]"

DEPEND="dev-python/eventlet"
