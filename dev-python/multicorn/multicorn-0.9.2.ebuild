# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="4"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit distutils

DESCRIPTION="Python module of MultiCorn's PostgreSQL extension"
HOMEPAGE="http://multicorn.org"
SRC_URI="http://api.pgxn.org/dist/multicorn/${PV}/multicorn-${PV}.zip"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="lxml docutils imap"

DEPEND=""
RDEPEND="dev-python/log-colorizer
        dev-python/sqlalchemy[postgres]
        lxml? ( dev-python/lxml )
        imap? ( dev-python/imapclient )
        docutils? ( dev-python/docutils )"
