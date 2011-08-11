# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="2.*"

inherit distutils git

MY_PN="Multicorn"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A data access library"
HOMEPAGE="http://multicorn.org"
EGIT_REPO_URI="https://github.com/Kozea/${MY_PN}.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="sqlite mysql postgres"

RDEPEND=""
DEPEND="${RDEPEND}
	sqlite? ( dev-python/sqlalchemy )
    mysql? ( dev-python/sqlalchemy )
    postgres? ( dev-python/sqlalchemy )"

S="${WORKDIR}/${MY_P}"
