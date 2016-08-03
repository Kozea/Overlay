# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python3_{3,4,5} )

inherit distutils-r1

MY_PN="tornado_systemd"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Use socket activation with tornado"
HOMEPAGE="git://github.com/Kozea/${PN}.git"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=www-servers/tornado-3.2"
DEPEND="${RDEPEND}"

S="${WORKDIR}/${MY_P}"
