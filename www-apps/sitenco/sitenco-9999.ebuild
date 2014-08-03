# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python{3_3,3_4} )

inherit git-2

DESCRIPTION="Simple websites for simple projects."
HOMEPAGE="https://github.com/Kozea/sitenco"
EGIT_REPO_URI="https://github.com/Kozea/sitenco.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="git lighttpd"

RDEPEND="
        git? ( dev-python/brigit )
        lighttpd? ( dev-python/flipflop )
        dev-python/flask
        dev-python/pyyaml
        dev-python/docutils-html5-writer
        dev-python/sphinx
        dev-python/pygal"
DEPEND="${RDEPEND}"

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
