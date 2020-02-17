# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python{2_7,3_4,3_5,3_6,3_7} )

inherit distutils-r1 git-r3

DESCRIPTION="Flask SQLAlchemy single connection extension to run tests in a super transaction and rollback at teardown"
HOMEPAGE="https://github.com/Kozea/tears"
EGIT_REPO_URI="git://github.com/Kozea/${PN}.git"

LICENSE="GPL-3"
KEYWORDS="~amd64 ~x86"

SLOT="0"

RDEPEND="dev-python/flask-sqlalchemy[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"
