# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/icalendar/icalendar-2.2.ebuild,v 1.5 2012/03/09 10:32:19 phajdan.jr Exp $

EAPI="5"
PYTHON_COMPAT=( python{2_6,2_7,3_3} )

MY_PN="Babel"
MY_P="${MY_PN}-${PV}"


inherit distutils-r1

DESCRIPTION="A collection of tools for internationalizing Python applications."
HOMEPAGE="http://babel.pocoo.org/"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86 ~x86-fbsd"
IUSE=""
RESTRICT="test"


RDEPEND=""
DEPEND="
	dev-python/setuptools
	dev-python/pytz"

S=${WORKDIR}/${MY_P}
