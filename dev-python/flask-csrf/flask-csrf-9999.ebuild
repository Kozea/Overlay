# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
SUPPORT_PYTHON_ABIS="1"

inherit distutils mercurial

MY_PN="Flask-CSRF"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="CSRF support for Flask applications"
HOMEPAGE="http://pypi.python.org/pypi/flask-csrf"
EHG_REPO_URI="http://bitbucket.org/sjl/flask-csrf"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-python/flask
        dev-python/setuptools"
DEPEND="${RDEPEND}"

S="${WORKDIR}/${MY_P}"
