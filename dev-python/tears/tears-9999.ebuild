# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy{1_8,1_9,2_0} )

inherit distutils-r1 git-2

DESCRIPTION="Flask SQLAlchemy single connection extension to run tests in a super transaction and rollback at teardown"
HOMEPAGE="https://github.com/Kozea/tears"
EGIT_REPO_URI="git://github.com/Kozea/${PN}.git"

LICENSE="GPL-3"
KEYWORDS="~amd64 ~x86"

SLOT="0"
RDEPEND=""
DEPEND="${RDEPEND}
    dev-python/flask-sqlalchemy"
