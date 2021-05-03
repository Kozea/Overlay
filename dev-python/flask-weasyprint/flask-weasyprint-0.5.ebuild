# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/flask-babel/flask-babel-0.8.ebuild,v 1.1 2012/04/19 07:55:06 patrick Exp $

EAPI=7
PYTHON_COMPAT=( python{2_7,3_4,3_5,3_6,3_7} )

inherit distutils-r1

MY_PN="Flask-WeasyPrint"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Make PDF in your Flask app with WeasyPrint"
HOMEPAGE="http://packages.python.org/Flask-WeasyPrint/"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-python/flask-0.10[${PYTHON_USEDEP}]
         >=dev-python/werkzeug-0.9[${PYTHON_USEDEP}]
         >=dev-python/weasyprint-0.12[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}/${MY_P}"

