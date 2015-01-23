# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI="5"

MY_PN="Multicorn"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A PostgreSQL extension for foreign data access"
HOMEPAGE="http://multicorn.org"
SRC_URI="https://github.com/Kozea/${MY_PN}/archive/v${PV}.tar.gz"

LICENSE="BSD"
KEYWORDS="~amd64 ~x86"
SLOT="0"
IUSE=""

DEPEND="dev-python/multicorn
        >=dev-db/postgresql-9.2"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${MY_P}"

src_compile() {
    sed -e "s/install: python_code//" -i Makefile
    emake PYTHON_OVERRIDE=/usr/bin/python3.4 || die
}

src_install() {
    emake DESTDIR="${D}" USE_PGXS=1 install || die
}
