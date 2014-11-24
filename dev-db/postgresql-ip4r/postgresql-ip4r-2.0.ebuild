# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION=""
HOMEPAGE=""

MY_PN="${PN/postgresql-}-extension"
MY_P="${MY_PN}-${PV}"
S="${WORKDIR}/${MY_P}"

SRC_URI="http://pgfoundry.org/frs/download.php/3383/${MY_P}.tgz"
LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""



DEPEND=">=virtual/postgresql-9.1"
RDEPEND="${DEPEND}"

src_compile() {
	emake USE_PGS=1 || die
}

src_install() {
	emake DESTDIR="${D}" USE_PGXS=1 install || die
	dodoc README.ip4r
}
