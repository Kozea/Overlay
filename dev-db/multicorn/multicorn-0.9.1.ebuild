# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="4"

MY_PN="Multicorn"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A PostgreSQL extension for data access"
HOMEPAGE="http://multicorn.org"
SRC_URI="http://api.pgxn.org/dist/multicorn/${PV}/multicorn-${PV}.zip"

LICENSE="BSD"
SLOT="9.1"
KEYWORDS="~amd64 ~x86"
IUSE="lxml docutils imap"

DEPEND=">=dev-db/postgresql-server-9.1:9.1"
RDEPEND="${DEPEND}"

src_compile() {
    emake || die
}

src_install() {
    emake NO_PYTHON="1" DESTDIR="${D}" USE_PGXS=1 install || die
}
