# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="4"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit git-2

DESCRIPTION="The labSharing website"
HOMEPAGE="http://kozea.org"
EGIT_REPO_URI="git@github.com:Kozea/labsharing.git"

LICENSE="Proprietary"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
        dev-python/weasyprint
        media-gfx/cairosvg
        dev-python/cssutils
        dev-python/flask-weasyprint
        =dev-python/flask-uploads-0.1.3*
        dev-python/pygal
        =dev-python/pynuts-9999
        dev-python/flup
        dev-python/psycopg
        =dev-python/dulwich-0.9.4*"

LABSHARING_DIR="/var/lib/${PN}"

src_install() {
        insinto "${LABSHARING_DIR}"
        rm -rf .git*
        doins -r . || die
        fperms +x "${LABSHARING_DIR}/labsharing.py" || die
        fperms +x "${LABSHARING_DIR}/labsharing.fcgi" || die
        fperms +x "${LABSHARING_DIR}/www_labsharing.py" || die
        fperms +x "${LABSHARING_DIR}/www_labsharing.fcgi" || die
}

pkg_postinst() {
        einfo
        elog "${PN} is installed in ${LABSHARING_DIR}"
        einfo
}
