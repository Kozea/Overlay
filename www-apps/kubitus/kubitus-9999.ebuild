# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="4"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit git-2

DESCRIPTION="The Kubitus website"
HOMEPAGE="http://kozea.org"
EGIT_REPO_URI="ssh://git@git.kozea.fr:27015/~/${PN}"

LICENSE="Proprietary"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="lighttpd"

RDEPEND=""
DEPEND="${RDEPEND}
        dev-python/flask
        dev-python/flup"

KUBITUS_DIR="/var/lib/${PN}"

src_install() {
        insinto "${KUBITUS_DIR}"
        rm -rf .git*
        doins -r . || die
        if use lighttpd; then
	        fowners -R lighttpd:lighttpd "${KUBITUS_DIR}" || die
        fi
        fperms +x "${KUBITUS_DIR}/run.py" || die
        fperms +x "${KUBITUS_DIR}/kubitus.fcgi" || die
}

pkg_postinst() {
        einfo
        elog "${PN} is installed in ${KUBITUS_DIR}"
        einfo
}
