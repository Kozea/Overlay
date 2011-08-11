# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit distutils git

MY_PN="Frozen-Flask"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Freeze a Flask application into a set of static files"
HOMEPAGE="http://packages.python.org/${MY_PN}/"
EGIT_REPO_URI="git://github.com/SimonSapin/${MY_PN}.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc test"

RDEPEND="dev-python/flask"
DEPEND="${RDEPEND}
	dev-python/setuptools
	doc? ( dev-python/sphinx )"

S="${WORKDIR}/${MY_P}"

src_compile() {
	distutils_src_compile

	if use doc; then
		einfo "Generation of documentation"
		sphinx-build docs html || die "Generation of documentation failed"
	fi
}

src_install() {
	distutils_src_install

	if use doc; then
		dohtml -r html/* || die "Installation of documentation failed"
	fi
}

src_test() {
	testing() {
		PYTHONPATH="build-${PYTHON_ABI}/lib" \
			"$(PYTHON)" -m unittest flaskext.frozen.tests || die 'test failed.'
	}
	python_execute_function testing
}
