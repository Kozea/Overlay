# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python2_7 python3_{4,5} pypy )

inherit distutils-r1

DESCRIPTION="Your invisible but loud monitoring pet"
HOMEPAGE="https://gitlab.com/localg-host/watchghost"

LICENSE="AGPL3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
        www-servers/tornado
        dev-python/aioftp"
DEPEND="${RDEPEND}"
