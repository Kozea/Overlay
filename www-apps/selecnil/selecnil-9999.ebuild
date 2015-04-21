# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python3_3 )

inherit git-2

DESCRIPTION="CNIL declarator™"
HOMEPAGE="http://kozea.org"
EGIT_REPO_URI="https://github.com/Kozea/selecnil.git"

LICENSE="Proprietary"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
        dev-python/flipflop
        dev-python/flask
        dev-python/selenium
        dev-python/pillow
        dev-python/pyvirtualdisplay"

SELECNIL_DIR="/var/lib/${PN}"

src_install() {
        insinto "${SELECNIL_DIR}"
        rm -rf .git*
        doins -r . || die
        fperms +x "${SELECNIL_DIR}/selecnil.fcgi" || die
        fperms +x "${SELECNIL_DIR}/selecnil.py" || die
}

pkg_postinst() {
        einfo
        elog "${PN} is installed in ${SELECNIL_DIR}"
        einfo
}
