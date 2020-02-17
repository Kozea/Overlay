# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python3_{4,5,6,7} )

inherit distutils-r1 git-r3

DESCRIPTION="Data"
HOMEPAGE="http://pypet.org/"
EGIT_REPO_URI="git://github.com/Kozea/${PN}.git"
EGIT_BRANCH="python3"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-python/sqlalchemy[${PYTHON_USEDEP}]
        dev-python/psycopg[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"
