# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python3_3 )

inherit git-2

DESCRIPTION="The Kozea website"
HOMEPAGE="http://kozea.org"
EGIT_REPO_URI="ssh://git@git.kozea.fr:27015/~/${PN}"

LICENSE="Proprietary"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
        dev-python/flask
        dev-python/flipflop"

KOZEA_DIR="/var/lib/${PN}"

src_install() {
        insinto "${KOZEA_DIR}"
        rm -rf .git*
        doins -r . || die
        fperms +x "${KOZEA_DIR}/run.py" || die
}

pkg_postinst() {
        einfo
        elog "${PN} is installed in ${KOZEA_DIR}"
        einfo
}
