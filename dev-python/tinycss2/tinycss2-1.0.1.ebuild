# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_{5,6,7} )

inherit distutils-r1

DESCRIPTION="A complete yet simple CSS parser for Python"
HOMEPAGE="https://github.com/SimonSapin/tinycss2/
	https://pypi.org/project/tinycss2/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="test"

RESTRICT="test"

RDEPEND="dev-python/webencodings[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
	test? ( dev-python/pytest[${PYTHON_USEDEP}] )"

DOCS=( README.rst )

python_test() {
	py.test || die "testsuite failed under ${EPYTHON}"
}

src_prepare() {
        default
        sed -i "s/pytest-runner//" setup.cfg || die "setup.cfg sed failed"
}

