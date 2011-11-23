# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="4"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

EGIT_BRANCH="sqlalchemy"
inherit git

DESCRIPTION="The hydra website generator"
HOMEPAGE="http://kozea.org"
EGIT_REPO_URI="ssh://git@kozea.fr:27015/~/${PN}"

LICENSE="Proprietary"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="lighttpd"

RDEPEND=""
DEPEND="${RDEPEND}
        dev-python/multicorn[lxml,docutils]
        dev-python/csstyle
        dev-python/flask
        dev-python/python-ghostscript
        dev-python/wtforms
        dev-python/cairosvg
        dev-python/imaging
        dev-python/pytz
        dev-python/icalendar
        dev-python/soappy
        dev-python/pyinotify
        dev-python/flask-sqlalchemy
        dev-python/pygal
        dev-python/pyyaml
        dev-python/flup
        dev-python/sqlalchemy_fdw"

HYDRA_DIR="/var/lib/${PN}"

src_install() {
        insinto "${HYDRA_DIR}"
        rm -rf .git*
        doins -r . || die
        if use lighttpd; then
	        fowners -R lighttpd:lighttpd "${HYDRA_DIR}" || die
        fi
        fperms +x "${HYDRA_DIR}/runserver.py" || die
        fperms +x "${HYDRA_DIR}/setup.py" || die
        fperms +x "${HYDRA_DIR}/statuscheck.py" || die
        fperms +x "${HYDRA_DIR}/hydra-groupinfo.fcgi" || die
        fperms +x "${HYDRA_DIR}/hydra-pharminfo.fcgi" || die
        fperms +x "${HYDRA_DIR}/hydra-medsite.fcgi" || die
        fperms +x "${HYDRA_DIR}/hydra-pharminfo-staging.fcgi" || die
}

pkg_postinst() {
        einfo
        elog "${PN} is installed in ${HYDRA_DIR}"
        einfo
}
