# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI="4"
inherit versionator

MY_PN="multicorn"
MY_PV=$(replace_version_separator 3 '')
MY_P="${MY_PN}-${MY_PV}"
DESCRIPTION="A PostgreSQL extension for data access"
HOMEPAGE="http://multicorn.org"
SRC_URI="http://api.pgxn.org/dist/multicorn/${MY_PV}/multicorn-${MY_PV}.zip"
LICENSE="BSD"
SLOT="9.2"
KEYWORDS="~amd64 ~x86"
IUSE="lxml docutils imap"
S="${WORKDIR}/${MY_P}"

DEPEND="dev-python/multicorn 
        >=dev-db/postgresql-server-9.2"
RDEPEND="${DEPEND}"

src_compile() {
    sed -e "s/pg_config/pg_config92/" -i Makefile
    emake || die
}

src_install() {
    emake NO_PYTHON="1" DESTDIR="${D}" USE_PGXS=1 install || die
}
