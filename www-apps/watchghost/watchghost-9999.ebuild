# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python3_5 )

inherit distutils-r1 git-2

DESCRIPTION="Your invisible but loud monitoring pet"
HOMEPAGE="https://gitlab.com/localg-host/watchghost"

LICENSE="AGPL3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
EGIT_REPO_URI="https://gitlab.com/localg-host/${PN}.git"

RDEPEND="
        www-servers/tornado
        dev-python/aioftp
        dev-python/asyncssh"
DEPEND="${RDEPEND}"

python_prepare_all() {
    rm -rf tests
    distutils-r1_python_prepare_all
}
