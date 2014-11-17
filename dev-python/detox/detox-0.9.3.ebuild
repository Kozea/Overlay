# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python3_4 )

inherit distutils-r1

DESCRIPTION="Your Modern Continous Integration server"
HOMEPAGE="git://github.com/Kozea/${PN}.git"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
        dev-python/tornado-systemd
        dev-python/pyyaml
        dev-python/wtforms
        dev-python/sqlalchemy
        dev-python/psycopg
        dev-python/wtforms-alchemy
        dev-python/pbkdf2
        dev-python/pygal
        >=dev-python/pygments-2.0_pre
        dev-python/simplepam"

DEPEND="dev-python/eventlet"
