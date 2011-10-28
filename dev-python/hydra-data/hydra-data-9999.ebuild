# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit git

MY_PN="data"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Data manager for Hydra"
HOMEPAGE="http://kozea.org/"
EGIT_REPO_URI="git@julia:${MY_PN}"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="dev-python/psycopg
    =dev-python/pika-9999
    net-misc/rabbitmq-server"

DATA_DIR="/var/lib/${PN}"

src_install() {
        insinto "${DATA_DIR}"
        rm -rf .git
        doins -r . || die
        fperms +x "${DATA_DIR}/datapop.py" || die
        fperms +x "${DATA_DIR}/dataparse.py" || die
        fperms +x "${DATA_DIR}/datajoin.py" || die
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
