# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/decorator/decorator-3.4.0-r1.ebuild,v 1.8 2014/04/02 21:20:36 chutzpah Exp $

EAPI=5
PYTHON_COMPAT=( python3_{3,4} )

inherit distutils-r1

MY_PN="SQLAlchemy-Utils"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Various utility functions for SQLAlchemy."
HOMEPAGE="http://pypi.python.org/pypi/${MY_PN}"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~alpha amd64 arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc x86 ~amd64-linux ~x86-linux ~x64-macos"
IUSE=""

DEPEND="
    dev-python/setuptools[${PYTHON_USEDEP}]
"
RDEPEND="
    dev-python/six
    >=dev-python/sqlalchemy-0.9.3
"

S="${WORKDIR}/${MY_P}"

src_install() {
    rm -rf tests
    distutils-r1_src_install
}
