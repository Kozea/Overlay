# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python{3_4,3_5} )

DESCRIPTION="Your Modern Continous Integration server"
HOMEPAGE="git://github.com/Kozea/${PN}.git"
SRC_URI=""

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
DEPEND="${RDEPEND}"
