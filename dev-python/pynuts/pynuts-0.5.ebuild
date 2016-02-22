# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
PYTHON_COMPAT=( python{2_7,3_4,3_5} )

inherit distutils-r1

MY_PN="Pynuts"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Documents for nuts"
HOMEPAGE="http://pynuts.org/"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-python/flask
        dev-python/dulwich
        dev-python/docutils
        dev-python/flask-uploads
        dev-python/flask-weasyprint
        dev-python/flask-sqlalchemy
        dev-python/sqlalchemy
        >=dev-python/flask-wtf-0.9
        dev-python/docutils-html5-writer"
DEPEND="${RDEPEND}"

S="${WORKDIR}/${MY_P}"
