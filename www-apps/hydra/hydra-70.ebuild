# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
PYTHON_COMPAT=( python3_3 )

inherit git-2

DESCRIPTION="The hydra website generator"
HOMEPAGE="http://kozea.org"
EGIT_REPO_URI="ssh://git@git.kozea.fr:27015/~/${PN}"
EGIT_COMMIT="v${PV}"

LICENSE="Proprietary"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="lighttpd"

RDEPEND=""
DEPEND="${RDEPEND}
        dev-python/multicorn[lxml,docutils]
        dev-db/postgis
        dev-db/multicorn
        dev-python/babel
        dev-python/imapclient
        dev-python/hydra_fdw
        >=dev-python/flask-0.10
        dev-python/html5lib
        dev-python/docutils-html5-writer
        dev-python/python-ghostscript
        =dev-python/wtforms-1.0*
        media-gfx/cairosvg
        virtual/python-imaging
        dev-python/pytz
        dev-python/icalendar
        dev-python/pypet
        dev-python/pyinotify
        >=dev-python/flask-sqlalchemy-0.17
        =dev-python/sqlalchemy-0.8*
        dev-python/flask-weasyprint
        dev-python/pygal
        dev-python/pyyaml
        dev-python/flup
        dev-python/docutils-html5-writer
        dev-python/pyquery
        dev-python/sqlalchemy_fdw
        dev-python/pyinotify
        =dev-ruby/compass-0.12*"

HYDRA_DIR="/var/lib/${PN}"

src_install() {
        insinto "${HYDRA_DIR}"

        rm -rf .git*
        echo "Generating themes..."
        ./${PN}/static/build_for_prod.sh

        doins -r . || die
        if use lighttpd; then
	        fowners -R lighttpd:lighttpd "${HYDRA_DIR}" || die
	        fowners -R lighttpd:postgres "${HYDRA_DIR}"/hydra/static || die
	        fowners -R lighttpd:postgres "${HYDRA_DIR}"/hydra/data || die
            fperms 750 "${HYDRA_DIR}" || die
            fperms -R g+rws "${HYDRA_DIR}"/hydra/static || die
            fperms -R g+rws "${HYDRA_DIR}"/hydra/data || die
        fi
        ln -s /var/lib/mammoth/cip7 ${HYDRA_DIR}/hydra/static/cip
        fperms +x "${HYDRA_DIR}/runserver.py" || die
        fperms +x "${HYDRA_DIR}/statuscheck.py" || die
        fperms +x "${HYDRA_DIR}/hydra-groupinfo.fcgi" || die
        fperms +x "${HYDRA_DIR}/hydra-pharminfo.fcgi" || die
        fperms +x "${HYDRA_DIR}/hydra-medsite.fcgi" || die
}

pkg_postinst() {
        einfo
        elog "${PN} is installed in ${HYDRA_DIR}"
		elog "Don't forget to run sqitch:"
		elog "cd ${HYDRA_DIR} && sqitch deploy @v${PV} --set hydra_is_testing=false --set hydra_folder=${HYDRA_DIR}/hydra"
        einfo
}
