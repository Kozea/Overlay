# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python3_{3,4,5} )

inherit distutils-r1 git-2

MY_PN="WTForms-Alchemy"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Generates WTForms forms from SQLAlchemy models"
HOMEPAGE="https://github.com/kvesteri/wtforms-alchemy"
EGIT_REPO_URI="git://github.com/paradoxxxzero/${PN}.git"
EGIT_BRANCH="include_relationships"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/sqlalchemy-0.8
	>=dev-python/wtforms-1.0.4
	>=dev-python/wtforms-components-0.9.2
	>=dev-python/sqlalchemy-utils-0.23.1
	>=dev-python/six-1.4.1"
DEPEND=""

S="${WORKDIR}/${MY_P}"
