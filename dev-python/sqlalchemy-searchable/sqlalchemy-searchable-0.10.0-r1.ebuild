# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/decorator/decorator-3.4.0-r1.ebuild,v 1.8 2014/04/02 21:20:36 chutzpah Exp $

EAPI=5
PYTHON_COMPAT=( python3_{3,4,5} )

inherit distutils-r1

MY_PN="SQLAlchemy-Searchable"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Provides fulltext search capabilities for declarative SQLAlchemy models."
HOMEPAGE="http://pypi.python.org/pypi/${MY_PN}"
SRC_URI="https://github.com/kvesteri/sqlalchemy-searchable/archive/48d74eef714db8b31ed83365d19100d9aaa849ae.zip"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~alpha amd64 arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc x86 ~amd64-linux ~x86-linux ~x64-macos"
IUSE=""

DEPEND="
    dev-python/setuptools[${PYTHON_USEDEP}]
"
RDEPEND="
    >=dev-python/pyparsing-2.0.1[${PYTHON_USEDEP}]
    >=dev-python/sqlalchemy-0.7.8[${PYTHON_USEDEP}]
    >=dev-python/psycopg-2.4.6[${PYTHON_USEDEP}]
    >=dev-python/sqlalchemy-utils-0.16.24[${PYTHON_USEDEP}]
    >=dev-python/validators-0.3.0[${PYTHON_USEDEP}]
"

S="${WORKDIR}/${MY_P}"

