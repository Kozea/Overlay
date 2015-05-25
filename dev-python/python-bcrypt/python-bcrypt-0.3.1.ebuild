# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/flask-babel/flask-babel-0.8.ebuild,v 1.1 2012/04/19 07:55:06 patrick Exp $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7,3_3,3_4} )

inherit distutils-r1

DESCRIPTION="An up to date fork of py-bcrypt, Python 3 and Python 2 compatible"
HOMEPAGE="https://github.com/DisruptiveLabs/python-bcrypt"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.zip"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	dev-python/setuptools"
