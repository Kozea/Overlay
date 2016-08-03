# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit git-2

DESCRIPTION="Simple websites for simple projects."
HOMEPAGE="https://github.com/Kozea/sitenco"
EGIT_REPO_URI="https://github.com/Kozea/sitenco.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="git"

RDEPEND="
        git? ( dev-python/brigit )
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
        fperms +x "${SITENCO_DIR}/sitenco.py" || die
}

pkg_postinst() {
        einfo
        elog "${PN} is installed in ${SITENCO_DIR}"
        einfo
}
