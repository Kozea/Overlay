# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="4"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit git-2

DESCRIPTION="Dress your documents"
HOMEPAGE="http://koztumize.org"
EGIT_REPO_URI="git://github.com/Kozea/Koztumize.git"

LICENSE="AGPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="lighttpd"

RDEPEND=""
DEPEND="${RDEPEND}
        dev-python/multicorn
        dev-python/pynuts
        dev-python/sqlalchemy_fdw"

KOZTUMIZE_DIR="/var/lib/${PN}"

src_install() {
        insinto "${KOZTUMIZE_DIR}"
        rm -rf .git*
        doins -r . || die
        if use lighttpd; then
	        fowners -R lighttpd:lighttpd "${KOZTUMIZE_DIR}" || die
        fi
}

pkg_postinst() {
        einfo
        elog "${PN} is installed in ${KOZTUMIZE_DIR}"
        einfo
}
