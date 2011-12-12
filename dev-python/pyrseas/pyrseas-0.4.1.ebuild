# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
SUPPORT_PYTHON_ABIS="1"

inherit distutils

MY_PN="Pyrseas"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Framework and utilities to upgrade and maintain databases"
HOMEPAGE="http://pyrseas.projects.postgresql.org/"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
        >=dev-python/psycopg-2.2
        >=dev-python/pyyaml-3.09"
DEPEND="${RDEPEND}
	dev-python/setuptools"

S="${WORKDIR}/${MY_P}"
