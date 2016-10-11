# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
PYTHON_COMPAT=( python{2_6,2_7,3_3,3_4,3_5} )

inherit distutils-r1

DESCRIPTION="Pika is a pure-Python implementation of the AMQP 0-9-1 protocol."
HOMEPAGE="http://${PN}.github.com/"
#SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
SRC_URI="https://github.com/pika/pika/archive/51fd186f1fabe0da8582609d266df1e28e57e3f4.zip"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"

S="${WORKDIR}/pika-51fd186f1fabe0da8582609d266df1e28e57e3f4"
