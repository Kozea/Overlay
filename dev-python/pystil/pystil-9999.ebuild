# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit distutils git

DESCRIPTION="An elegant site web traffic analyzer"
HOMEPAGE="http://pystil.org"
EGIT_REPO_URI="git://github.com/Kozea/${PN}.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="lighttpd"

RDEPEND="net-libs/nodejs"
DEPEND="${RDEPEND}
        dev-python/log-colorizer
	dev-python/pygeoip
        dev-python/multicorn
        dev-python/flask"

PYSTIL_DIR="/var/lib/${PN}"

src_install() {
        insinto "${PYSTIL_DIR}"
        doins -r . || die
        if use lighttpd; then
	        fowners lighttpd:lighttpd "${PYSTIL_DIR}" || die
        fi
}
