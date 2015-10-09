# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/alembic/alembic-0.6.4.ebuild,v 1.2 2014/07/06 12:36:26 mgorny Exp $

EAPI=5
PYTHON_COMPAT=( python{3_3,3_4} )

inherit distutils-r1

DESCRIPTION="A generic slugifier."
HOMEPAGE="http://github.com/zacharyvoase/slugify"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND=""
