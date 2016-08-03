# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

inherit git-2

MY_PN="data"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Data manager for Hydra"
HOMEPAGE="http://kozea.org/"
EGIT_REPO_URI="git@github.com:Kozea/hydrata.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
    dev-python/psycopg[python2_7]
    dev-python/pika[python2_7]
    net-misc/rabbitmq-server"
DEPEND="${RDEPEND}"

DATA_DIR="/var/lib/${PN}"

src_install() {
        insinto "${DATA_DIR}"
        rm -rf .git
        doins -r . || die
        newinitd "${DATA_DIR}"/init.d/hydra-datajoin.sh hydra-datajoin || die
        newinitd "${DATA_DIR}"/init.d/hydra-dataparse.sh hydra-dataparse || die
        fperms +x "${DATA_DIR}/datapop.py" || die
        fperms +x "${DATA_DIR}/dataparse.py" || die
        fperms +x "${DATA_DIR}/datajoin.py" || die
        fperms +x "${DATA_DIR}/datamove.py" || die
}

pkg_postinst() {
        einfo
        elog "${PN} is installed in ${DATA_DIR}"
        einfo
}

pkg_postrm() {
    return
}

S="${WORKDIR}/${MY_P}"
