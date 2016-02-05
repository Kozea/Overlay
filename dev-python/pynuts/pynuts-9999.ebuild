# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
PYTHON_COMPAT=( python2_7 python3_{4,5} )

inherit distutils-r1 git-2

MY_PN="Pynuts"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Documents for nuts"
HOMEPAGE="http://pynuts.org/"
EGIT_REPO_URI="git://github.com/Kozea/${MY_PN}.git"

LICENSE="BSD"
SLOT="3"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-python/flask
        dev-python/dulwich
        dev-python/docutils
        dev-python/flask-uploads
        dev-python/flask-weasyprint
        dev-python/flask-sqlalchemy
        dev-python/sqlalchemy
        dev-python/flask-wtf
        dev-python/docutils-html5-writer"
DEPEND="${RDEPEND}"

S="${WORKDIR}/${MY_P}"
