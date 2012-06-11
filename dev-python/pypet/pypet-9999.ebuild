# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit distutils git-2

DESCRIPTION="Data"
HOMEPAGE="http://pypet.org/"
EGIT_REPO_URI="git://github.com/Kozea/${PN}.git"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-python/sqlalchemy
        dev-python/psycopg
        dev-python/flask-wtf
        dev-python/docutils-html5-writer"
DEPEND="${RDEPEND}"
