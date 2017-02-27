# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/flask-babel/flask-babel-0.8.ebuild,v 1.1 2012/04/19 07:55:06 patrick Exp $

EAPI="5"
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6} )

inherit distutils-r1

DESCRIPTION="Flexible and efficient upload handling for Flask"
HOMEPAGE="http://packages.python.org/Flask-Uploads/"
SRC_URI="https://bitbucket.org/mattupstate/flask-uploads/get/default.tar.gz"

LICENSE="BSD"
SLOT="3"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-python/flask[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
       dev-python/setuptools[${PYTHON_USEDEP}]"
S="${WORKDIR}/mattupstate-flask-uploads-caf5ac26fd33"
