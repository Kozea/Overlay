# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit distutils git-2

MY_PN="Pynuts"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Documents for nuts"
HOMEPAGE="http://pynuts.org/"
EGIT_REPO_URI="git://github.com/Kozea/${MY_PN}.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-python/flask
        dev-python/flask-uploads
        dev-python/flask-sqlalchemy
        dev-python/flask-csrf
        dev-python/flask-wtf
        dev-python/docutils-html5-writer"
DEPEND="${RDEPEND}"

S="${WORKDIR}/${MY_P}"
