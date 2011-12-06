# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="*-jython"

EGIT_BRANCH="devel"
inherit distutils git-2

MY_PN="${PN}2"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="PostgreSQL database adapter for Python"
HOMEPAGE="http://initd.org/psycopg/ http://pypi.python.org/pypi/psycopg2"
EGIT_REPO_URI="git://github.com/dvarrazzo/${PN}.git"

LICENSE="GPL-2"
SLOT="2"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~x86-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~x86-solaris"
IUSE="debug doc examples mxdatetime"

RDEPEND=">=dev-db/postgresql-base-8.1
        mxdatetime? ( dev-python/egenix-mx-base )"
DEPEND="${RDEPEND}
        doc? ( dev-python/sphinx )"
RESTRICT="test"

S="${WORKDIR}/${MY_P}"

PYTHON_CFLAGS=("2.* + -fno-strict-aliasing")

DOCS="AUTHORS doc/HACKING doc/SUCCESS"
PYTHON_MODNAME="${PN}2"

