# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-gfx/cairosvg/cairosvg-1.0.ebuild,v 1.1 2013/09/19 11:04:05 pinkbyte Exp $

EAPI=5

PYTHON_COMPAT=( python{3_4,3_5,3_6,3_7} )

inherit distutils-r1

MY_PN="CairoSVG"
MY_P="${MY_PN}-${PV/_/}"

DESCRIPTION="A simple cairo based SVG converter with support for PDF, PostScript and PNG formats"
HOMEPAGE="http://cairosvg.org/"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-python/defusedxml[${PYTHON_USEDEP}]
	dev-python/cairocffi[${PYTHON_USEDEP}]
	dev-python/pillow[${PYTHON_USEDEP}]
	dev-python/tinycss2[${PYTHON_USEDEP}]
	dev-python/cssselect2[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"

S="${WORKDIR}/${MY_P}"

DOCS=( NEWS.rst README.rst TODO.rst )
