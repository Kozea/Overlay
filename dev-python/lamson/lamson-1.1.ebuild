# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit distutils

DESCRIPTION="Lamson is a modern Pythonic mail server built like a web application server."
HOMEPAGE="http://packages.python.org/${PN}/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	dev-python/chardet
	>=dev-python/jinja-2.0
	dev-python/mock
	dev-python/python-daemon"
DEPEND="${RDEPEND}
	dev-python/setuptools
	test? ( dev-python/nose )"

src_test() {
	testing() {
		mkdir run
		PYTHONPATH="." "$(PYTHON)" setup.py nosetests || die 'test failed.'
	}
	python_execute_function testing
}
