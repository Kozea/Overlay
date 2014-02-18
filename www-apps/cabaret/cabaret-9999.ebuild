# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python3_3 )

inherit git-2

DESCRIPTION="Cabaret for Pygal"
HOMEPAGE="http://pygal.org"
EGIT_REPO_URI="ssh://git@git.kozea.fr:27015/~/pygal"

LICENSE="LGPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="lighttpd"

RDEPEND=""
DEPEND="${RDEPEND}
        dev-python/flipflop
        dev-python/flask
        dev-python/pygal"

CABARET_DIR="/var/lib/${PN}"

src_install() {
        insinto "${CABARET_DIR}"
        doins -r demo || die
        if use lighttpd; then
	        fowners -R lighttpd:lighttpd "${CABARET_DIR}" || die
        fi
        fperms +x "${CABARET_DIR}/cabaret.fcgi" || die
        fperms +x "${CABARET_DIR}/cabaret.py" || die
}

pkg_postinst() {
        einfo
        elog "${PN} is installed in ${CABARET_DIR}"
        einfo
}
