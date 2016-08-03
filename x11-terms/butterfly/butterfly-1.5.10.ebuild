# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-gfx/cairosvg/cairosvg-1.0.ebuild,v 1.1 2013/09/19 11:04:05 pinkbyte Exp $

EAPI=5

PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} )

inherit distutils-r1

DESCRIPTION="A simple cairo based SVG converter with support for PDF, PostScript and PNG formats"
HOMEPAGE="http://cairosvg.org/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
    www-servers/tornado[${PYTHON_USEDEP}]
    dev-python/pyopenssl[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"
