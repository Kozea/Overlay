# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit distutils

DESCRIPTION="Python network library that uses greenlet and libevent for easy and scalable concurrency"
HOMEPAGE="http://packages.python.org/${PN}/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-libs/libevent
	dev-python/greenlet"
DEPEND=""

src_test() {
	testing() {
		mkdir run
		PYTHONPATH="." "$(PYTHON)" setup.py nosetests || die 'test failed.'
	}
	python_execute_function testing
}
