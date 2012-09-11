# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="4"

inherit git-2

MY_PN="Multicorn"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A PostgreSQL extension for foreign data access"
HOMEPAGE="http://multicorn.org"
EGIT_REPO_URI="git://github.com/Kozea/${MY_PN}.git"

LICENSE="BSD"
KEYWORDS="~amd64 ~x86"
SLOT="0"
IUSE=""

DEPEND="dev-db/postgresql-server"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${MY_P}"

src_compile() {
    emake || die
}

src_install() {
    emake NO_PYTHON="1" DESTDIR="${D}" USE_PGXS=1 install || die
}
