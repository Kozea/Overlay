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
IUSE="ldap apache lighttpd"

DEPEND="ldap? ( dev-python/python-ldap )"
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
        insinto /var/www/${PN}
        if use lighttpd; then
                doins radicale.fcgi || die
        fi
        if use apache; then
                doins radicale.wsgi || die
        fi
}
