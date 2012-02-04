# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit distutils git-2
EGIT_BRANCH="column_types"
MY_PN="Multicorn"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A data access library"
HOMEPAGE="http://multicorn.org"
EGIT_REPO_URI="git://github.com/Kozea/${MY_PN}.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="lxml docutils imap"

RDEPEND=""
DEPEND="${RDEPEND}
        dev-python/log-colorizer
        dev-python/sqlalchemy[postgres]
        lxml? ( dev-python/lxml )
        imap? ( dev-python/imapclient )
        docutils? ( dev-python/docutils )"

S="${WORKDIR}/${MY_P}"

src_compile() {
    emake || die
    distutils_src_compile
}

src_install() {
    emake NO_PYTHON="1" DESTDIR="${D}" USE_PGXS=1 install || die
    distutils_src_install
}
