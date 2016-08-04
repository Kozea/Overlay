# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} )
DISTUTILS_SINGLE_IMPL=1

inherit python-r1 eutils

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
    python_compile() {
        emake PYTHON_OVERRIDE="${PYTHON}" || die
    }
    python_foreach_impl python_compile
}

src_install() {
    emake DESTDIR="${D}" USE_PGXS=1 install || die
}
