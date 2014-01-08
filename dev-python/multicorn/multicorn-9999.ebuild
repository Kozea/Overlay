# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3} )

inherit distutils-r1 git-2

MY_PN="Multicorn"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Python module of MultiCorn's PostgreSQL extension"
HOMEPAGE="http://multicorn.org"
EGIT_REPO_URI="git://github.com/Kozea/${MY_PN}.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="lxml docutils imap"

RDEPEND=""
DEPEND="${RDEPEND}
        dev-python/log-colorizer
        >=dev-python/sqlalchemy-0.8
        lxml? ( dev-python/lxml )
        imap? ( dev-python/imapclient )
        docutils? ( dev-python/docutils )"

S="${WORKDIR}/${MY_P}"
