# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python3_{3,4,5} )

inherit distutils-r1 git-2

MY_PN="log_colorizer"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Defines a python logging formatter and a default handler for nice shell output"
HOMEPAGE="https://github.com/Kozea/${MY_PN}"
EGIT_REPO_URI="git://github.com/Kozea/${MY_PN}.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-python/setuptools"
DEPEND="${RDEPEND}"

S="${WORKDIR}/${MY_P}"
