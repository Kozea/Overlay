# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

PYTHON_COMPAT=( python3_3 )
PYTHON_DEPEND="3"
inherit distutils-r1 git-2

DESCRIPTION="An elegant site web traffic analyzer"
HOMEPAGE="http://pystil.org"
EGIT_REPO_URI="git://github.com/Kozea/${PN}.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND=""
DEPEND="${RDEPEND}
		www-servers/tornado
		dev-python/sqlalchemy
		dev-python/psycopg
		dev-python/pygal"
