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
IUSE="+raster +svg test"

DEPEND=""
RDEPEND="
    ${DEPEND}
    x11-libs/pango
    x11-libs/cairo
    dev-python/lxml
    >=dev-python/cffi-0.5
    >=dev-python/cairocffi-0.3
    >=media-gfx/cairosvg-0.4.1
    >=dev-python/cssselect-0.6
    =dev-python/tinycss-0.3
    dev-python/pyphen
    test? ( dev-python/pytest )"

S="${WORKDIR}/${MY_P}"
