# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
SUPPORT_PYTHON_ABIS="1"

inherit distutils

MY_PN="Attest"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Modern, Pythonic unit testing."
HOMEPAGE="http://packages.python.org/${MY_PN}/"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
    >=dev-python/progressbar-2.3
    dev-python/pygments"
DEPEND="${RDEPEND}
	dev-python/setuptools"

S="${WORKDIR}/${MY_P}"
