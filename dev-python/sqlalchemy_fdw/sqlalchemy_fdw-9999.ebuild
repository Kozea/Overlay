# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit distutils git-2

DESCRIPTION="A postgresql dialect based on psycopg2 adding support for Foreign Data Wrappers."
HOMEPAGE="http://www.multicorn.org"
EGIT_REPO_URI="git://github.com/Kozea/${PN}.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-python/sqlalchemy"
RDEPEND="${DEPEND}"
