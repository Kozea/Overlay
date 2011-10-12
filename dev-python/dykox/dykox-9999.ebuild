# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
SUPPORT_PYTHON_ABIS="1"

EGIT_BRANCH="dykox"
inherit distutils git

MY_PN="Dyko"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Dyko extensions."
HOMEPAGE="http://dyko.org"
EGIT_REPO_URI="git://github.com/Kozea/${MY_PN}.git"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND=""
