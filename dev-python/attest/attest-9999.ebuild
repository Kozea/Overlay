# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
SUPPORT_PYTHON_ABIS="1"

inherit distutils git

MY_PN="Attest"
MY_P="${MY_PN}-${PV}"

inherit distutils git

DESCRIPTION="Modern, Pythonic unit testing."
HOMEPAGE="http://packages.python.org/${MY_PN}/"
EGIT_REPO_URI="git://github.com/dag/${PN}.git"

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
