# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="7"
PYTHON_COMPAT=( python{3_8,3_9} )

inherit python-single-r1 eutils

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
    sed -e "s/all: preflight-check/all: /" -i Makefile
    emake PYTHON_OVERRIDE="${EPYTHON}" || die
}

src_install() {
    emake DESTDIR="${D}" USE_PGXS=1 install || die
}
