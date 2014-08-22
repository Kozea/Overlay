# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python3_3 )

inherit git-2

DESCRIPTION="Hadōkey website"
HOMEPAGE="http://hadokey.kozea.fr"
EGIT_REPO_URI="ssh://git@git.kozea.fr:27015/~/hadōkey"

LICENSE="Proprietary"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
        dev-python/flask
        dev-python/pygal
        dev-python/flipflop"

HADOKEY_DIR="/var/lib/${PN}"

src_install() {
        insinto "${HADOKEY_DIR}"
        rm -rf .git*
        doins -r . || die
        fperms +x "${HADOKEY_DIR}/hadokey.py" || die
}

pkg_postinst() {
        einfo
        elog "${PN} is installed in ${HADOKEY_DIR}"
        einfo
}
