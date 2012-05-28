# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="4"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

EGIT_BRANCH="pynuts"
inherit git-2

DESCRIPTION="The labSharing website"
HOMEPAGE="http://kozea.org"
EGIT_REPO_URI="ssh://git@kozea.fr:27015/~/${PN}"

LICENSE="Proprietary"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="lighttpd"

RDEPEND=""
DEPEND="${RDEPEND}
        media-gfx/weasyprint[svg]
        dev-python/cairosvg[lxml,css]
        dev-python/cssutils
        dev-python/pygal
        dev-python/pynuts
        dev-python/flup
        dev-python/dulwich"

LABSHARING_DIR="/var/lib/${PN}"

src_install() {
        insinto "${LABSHARING_DIR}"
        rm -rf .git*
        doins -r . || die
        if use lighttpd; then
	        fowners -R lighttpd:lighttpd "${LABSHARING_DIR}" || die
        fi
        fperms +x "${LABSHARING_DIR}/labsharing.py" || die
        fperms +x "${LABSHARING_DIR}/labsharing.fcgi" || die
}

pkg_postinst() {
        einfo
        elog "${PN} is installed in ${LABSHARING_DIR}"
        einfo
}
