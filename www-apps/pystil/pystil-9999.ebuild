# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit distutils git-2

DESCRIPTION="An elegant site web traffic analyzer"
HOMEPAGE="http://pystil.org"
EGIT_REPO_URI="git://github.com/Kozea/${PN}.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="lighttpd"

RDEPEND=""
DEPEND="${RDEPEND}
        dev-python/python-ldap
        dev-python/gevent
        dev-python/log-colorizer
        dev-python/pygeoip
        dev-python/pika
        dev-python/flask-sqlalchemy
        dev-python/flask"

PYSTIL_DIR="/var/lib/${PN}"

src_install() {
        insinto "${PYSTIL_DIR}"
        rm -rf .git
        doins -r . || die
        if use lighttpd; then
	        fowners -R lighttpd:lighttpd . || die
        fi
        fperms +x "${PYSTIL_DIR}/pystil_prod.py" || die
        fperms +x "${PYSTIL_DIR}/bin/datafeed.py" || die
        fperms +x "${PYSTIL_DIR}/migrate.py" || die
        fperms +x "${PYSTIL_DIR}/bin/webapp.py" || die
}

pkg_postinst() {
        einfo
        elog "${PN} is installed in ${PYSTIL_DIR}"
        einfo
}

pkg_postrm() {
    return
}
