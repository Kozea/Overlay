# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=2
PYTHON_DEPEND="*:2.6"
SUPPORT_PYTHON_ABIS=1

inherit distutils git-2

MY_PN="CSStyle"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A CSS3 preprocessor"
HOMEPAGE="http://csstyle.org"
EGIT_REPO_URI="git://github.com/Kozea/${MY_PN}.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND=""

S="${WORKDIR}/${MY_P}"
