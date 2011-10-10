# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=2
PYTHON_DEPEND="*:2.6"
SUPPORT_PYTHON_ABIS=1

inherit distutils

MY_PN="Radicale"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A simple CalDAV calendar server"
HOMEPAGE="http://www.radicale.org/"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="ssl ldap fastcgi"

DEPEND="ssl? ( >=dev-lang/python-2.6.6[ssl] )
        ldap? ( dev-python/python-ldap )
        fastcgi? ( dev-python/flup )"
RDEPEND="${DEPEND}"

S=${WORKDIR}/${MY_P}

src_install() {
        distutils_src_install

        # init file
        newinitd "${FILESDIR}"/radicale.init.d radicale || die

        # config file
        insinto /etc/${PN}
        doins config logging || die

        # fcgi and wsgi files
        insinto ${ROOT}usr/share/${PN}
        doins radicale.wsgi
        use fastcgi && doins radicale.fcgi
}

pkg_postinst() {
        einfo "Radicale now supports WSGI."
        einfo "A sample wsgi-script has been put into ${ROOT}usr/share/${PN}."
        use fastcgi && einfo "You will also find there an example fcgi-script."
}
