# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python{3_3,3_4} )

inherit git-2

DESCRIPTION="Super simple Python web-interface to Nagios"
HOMEPAGE="https://github.com/Kozea/nagipy"
EGIT_REPO_URI="https://github.com/Kozea/nagipy.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="git"

RDEPEND="
	dev-python/flask
	net-analyzer/mk-livestatus"
DEPEND="${RDEPEND}"

NAGIPY_DIR="/var/lib/${PN}"

src_install() {
        insinto "${NAGIPY_DIR}"
        rm -rf .git*
        doins -r . || die
        fperms +x "${NAGIPY_DIR}/nagipy.py" || die
}

pkg_postinst() {
        einfo
        elog "${PN} is installed in ${NAGIPY_DIR}"
        einfo
}
