# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit distutils git-2

MY_PN="Pyrseas"

DESCRIPTION="Framework and utilities to upgrade and maintain databases"
HOMEPAGE="http://pyrseas.projects.postgresql.org/"
EGIT_REPO_URI="git://github.com/jmafc/${MY_PN}.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
        >=dev-python/psycopg-2.2
        >=dev-python/pyyaml-3.09"
DEPEND="${RDEPEND}
	dev-python/setuptools"

S="${WORKDIR}/${MY_PN}"
