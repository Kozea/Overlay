# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5,3_6} )
# xml.etree.ElementTree module required.
PYTHON_REQ_USE="xml"

inherit distutils-r1 git-2

MY_PV="${PV/_beta/b}"

DESCRIPTION="A system for controlling process state under UNIX"
HOMEPAGE="http://supervisord.org/ https://pypi.python.org/pypi/supervisor"
EGIT_REPO_URI="https://github.com/Supervisor/supervisor.git"

LICENSE="repoze ZPL BSD HPND GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc test"

# ALL versions of meld3 match to >=meld3-0.6.5
RDEPEND="dev-python/meld3[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
	test? ( dev-python/mock[${PYTHON_USEDEP}] )
	doc? ( dev-python/sphinx[${PYTHON_USEDEP}] )"

S="${WORKDIR}/${PN}-${MY_PV}"

python_compile_all() {
	# Somehow the test phase is called and run on invoking a doc build; harmless
	use doc && emake -C docs html
}

python_test() {
	esetup.py test
}

python_install_all() {
	newinitd "${FILESDIR}/init.d-r1" supervisord
	newconfd "${FILESDIR}/conf.d" supervisord
	use doc && local HTML_DOCS=( docs/.build/html/. )
	distutils-r1_python_install_all
}
