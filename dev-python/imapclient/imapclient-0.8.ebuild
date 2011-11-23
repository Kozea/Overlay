# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/sqlalchemy/sqlalchemy-0.7.2.ebuild,v 1.3 2011/09/11 20:11:25 maekke Exp $

EAPI="3"
SUPPORT_PYTHON_ABIS="1"

inherit distutils

MY_PN="imapclient"
MY_P="${MY_PN}-${PV/_}"

DESCRIPTION="Easy-to-use, Pythonic and complete IMAP client library with no dependencies outside the Python standard library."
HOMEPAGE="http://imapclient.freshfoo.com/"
SRC_URI="mirror://pypi/${MY_P:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~hppa ~ppc ~x86 ~x86-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos"
IUSE=""

RDEPEND="dev-python/setuptools"
DEPEND="${RDEPEND}"

S="${WORKDIR}/${MY_P}"

PYTHON_CFLAGS=("2.* + -fno-strict-aliasing")

# In EAPI="4":
# DISTUTILS_GLOBAL_OPTIONS=("2.*-cpython --with-cextensions")
PYTHON_MODNAME="imapclient"

src_prepare() {
	distutils_src_prepare

	# Disable tests hardcoding function call counts specific to Python versions.
	rm -fr test/aaa_profiling
}

set_global_options() {
	# Extension modules fail to build with Python 3.
	DISTUTILS_GLOBAL_OPTIONS=()
}

distutils_src_compile_pre_hook() {
	set_global_options
}

distutils_src_install_pre_hook() {
	set_global_options
}

src_test() {
}

src_install() {
	distutils_src_install
}
