# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit distutils

DESCRIPTION="Pure Python MySQL Driver"
HOMEPAGE="http://${PN}.github.com/"
HOMEPAGE="http://code.google.com/p/pymysql"
SRC_URI="mirror://pypi/P/PyMySQL/PyMySQL-0.5.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"

#S="${WORKDIR}/${MY_P}"
