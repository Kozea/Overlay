# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="4"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit git-2

DESCRIPTION="The Site'n'co website generator"
HOMEPAGE="http://kozea.org"
EGIT_REPO_URI="ssh://git@kozea.fr:27015/~/${PN}"

LICENSE="AGPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="lighttpd"

RDEPEND=""
DEPEND="${RDEPEND}
        dev-python/multicorn[lxml,docutils]
        dev-python/flask
        dev-python/docutils-html5-writer
        dev-python/pygal
        dev-python/flup"

SITENCO_DIR="/var/lib/${PN}"

src_install() {
        insinto "${SITENCO_DIR}"
        rm -rf .git*
        doins -r . || die
        if use lighttpd; then
	        fowners -R lighttpd:lighttpd "${SITENCO_DIR}" || die
        fi
        fperms +x "${SITENCO_DIR}/sitenco.fcgi" || die
        fperms +x "${SITENCO_DIR}/run.py" || die
}

pkg_postinst() {
        einfo
        elog "${PN} is installed in ${SITENCO_DIR}"
        einfo
}
