# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python3_3 )

inherit distutils-r1 git-2

DESCRIPTION="A postgresql dialect based on psycopg2 adding support for Foreign Data Wrappers."
HOMEPAGE="http://www.multicorn.org"
EGIT_REPO_URI="git://github.com/Kozea/${PN}.git"
EGIT_BRANCH="python3"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-python/sqlalchemy"
RDEPEND="${DEPEND}"
