# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
SUPPORT_PYTHON_ABIS="1"

inherit distutils git-2

MY_PN="Flask-WTF"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="WTForms support for Flask applications"
HOMEPAGE="http://pypi.python.org/pypi/Flask-WTF"
EGIT_REPO_URI="git://github.com/rduplain/flask-wtf.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-python/flask
        dev-python/setuptools
        dev-python/flask-csrf
        dev-python/wtforms"
DEPEND="${RDEPEND}"

S="${WORKDIR}/${MY_P}"
