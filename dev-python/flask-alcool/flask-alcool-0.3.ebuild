# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/flask-wtf/flask-wtf-0.10.2.ebuild,v 1.1 2014/09/09 06:54:18 patrick Exp $

EAPI=5
PYTHON_COMPAT=( python3_4 )

inherit distutils-r1

MY_PN="Flask-Alcool"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Implement access control lists as decorators for flask."
HOMEPAGE="https://pypi.python.org/pypi/Flask-Alcool/0.3"
SRC_URI="mirror://pypi/${MY_P:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="BeerLicense"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="dev-python/flask"

S="${WORKDIR}/${MY_P}"
