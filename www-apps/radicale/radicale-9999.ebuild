# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python3_{4,5,6} )

inherit eutils distutils-r1 user git-2

MY_PN="Radicale"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A simple CalDAV calendar server"
HOMEPAGE="http://www.radicale.org/"
EGIT_REPO_URI="https://github.com/Kozea/${MY_PN}.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

S=${WORKDIR}/${MY_P}

RDEPEND="dev-python/vobject"
DEPEND="${RDEPEND}"

RDIR=/var/lib/radicale
LDIR=/var/log/radicale

pkg_setup() {
	enewgroup radicale
	enewuser radicale -1 -1 ${RDIR} radicale
}

python_install_all() {
	rm README* || die

	# directories
	diropts -m0750
	dodir ${RDIR}
	fowners radicale:radicale ${RDIR}
	diropts -m0755
	dodir ${LDIR}
	fowners radicale:radicale ${LDIR}

	# config file
	insinto /etc/${PN}
	doins config logging

	# fcgi and wsgi files
	exeinto /usr/share/${PN}
	doexe radicale.wsgi
	doexe radicale.fcgi

	distutils-r1_python_install_all
}

pkg_postinst() {
	einfo "A sample WSGI script has been put into ${ROOT}usr/share/${PN}."
	einfo "You will also find there an example FastCGI script."
}
