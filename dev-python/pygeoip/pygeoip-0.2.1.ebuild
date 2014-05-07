# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
PYTHON_COMPAT=( python{2_6,2_7,3_2,3_3,3_4} )

inherit distutils-r1 git-2

DESCRIPTION="Pure Python GeoIP API"
HOMEPAGE="http://code.google.com/p/pygeoip/"
SRC_URI="http://pypi.python.org/packages/source/${PN:0:1}/${PN}/${PN}-${PV}.tar.gz"

LICENSE="LGPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-python/six"
DEPEND="${RDEPEND}"

DISTUTILS_USE_SEPARATE_SOURCE_DIRECTORIES="1"
