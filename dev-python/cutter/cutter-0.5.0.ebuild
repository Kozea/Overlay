# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/pyphen/pyphen-0.9.1.ebuild,v 1.2 2014/03/31 21:23:59 mgorny Exp $

EAPI="5"
PYTHON_COMPAT=( python3_{4,5,6} )

inherit distutils-r1

DESCRIPTION="Python list cutter tool"
SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"
HOMEPAGE="https://github.com/paradoxxxzero/cutter"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND=""

python_prepare_all() {
    rm -rf test
    distutils-r1_python_prepare_all
}
