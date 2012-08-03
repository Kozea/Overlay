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
    svg? ( media-gfx/cairosvg )
    test? ( dev-python/pytest )
    raster? ( >=x11-libs/gdk-pixbuf-2.25 )
    dev-python/tinycss
    >=dev-python/cssselect-0.6
    >=x11-libs/pango-1.29.3
    dev-python/pycairo
    >=dev-python/pygobject-3.0"

S="${WORKDIR}/${MY_P}"
