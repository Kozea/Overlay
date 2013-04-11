# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4
SUPPORT_PYTHON_ABIS=1
PYTHON_DEPEND="*:2.6"
RESTRICT_PYTHON_ABIS="*-jython *-pypy-*"

inherit distutils git

MY_PN="WeasyPrint"

DESCRIPTION="WeasyPrint converts HTML/CSS documents to PDF."
HOMEPAGE="https://${PN}.org"
EGIT_REPO_URI="git://github.com/Kozea/${MY_PN}.git"

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
    >=dev-python/cffi-0.6
    >=dev-python/cairocffi-0.4[raster?]
    >=media-gfx/cairosvg-0.4.1
    >=dev-python/cssselect-0.6
    =dev-python/tinycss-0.3
    dev-python/pyphen
    test? ( dev-python/pytest )"
