# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python3_4 )

inherit distutils-r1

DESCRIPTION="Your Modern Continous Integration server - Git"
HOMEPAGE="http://github.com/Kozea/ymci"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	www-apps/ymci
	dev-vcs/git"
DEPEND=""
