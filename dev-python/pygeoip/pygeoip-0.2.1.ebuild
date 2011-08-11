# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
SUPPORT_PYTHON_ABIS="1"

inherit distutils

DESCRIPTION="Pure Python GeoIP API"
HOMEPAGE="http://code.google.com/p/pygeoip/"
SRC_URI="http://pypi.python.org/packages/source/p/pygeoip/${PN}-${PV}.tar.gz"

LICENSE="LGPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"

DISTUTILS_USE_SEPARATE_SOURCE_DIRECTORIES="1"
