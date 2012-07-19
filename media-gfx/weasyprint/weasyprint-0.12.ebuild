# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4
SUPPORT_PYTHON_ABIS=1
PYTHON_DEPEND="*:2.6"
RESTRICT_PYTHON_ABIS="*-jython *-pypy-*"

inherit distutils

MY_PN="WeasyPrint"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="WeasyPrint converts HTML/CSS documents to PDF."
HOMEPAGE="http://${PN}.org"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="svg test"

DEPEND=""
RDEPEND="${RDEPEND}
    svg? ( media-gfx/cairosvg )
    test? ( dev-python/pytest )
    >=dev-python/cssutils-0.9.9
    dev-python/lxml
    dev-python/pystacia
    >=x11-libs/pango-1.29.3
    dev-python/pycairo
    >=dev-python/pygobject-3.0"

S="${WORKDIR}/${MY_P}"
