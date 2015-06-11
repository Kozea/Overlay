# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

DESCRIPTION="This project provides a web tool to work with pdf files (you can rotate or merge pdfs)."
HOMEPAGE="http://kozea.fr"
SRC_URI=""

LICENSE="Proprietary"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	www-servers/tornado
	dev-python/python-ghostscript
	dev-python/PyPDF2
	media-gfx/imagemagick[jpeg,png]"
DEPEND="${RDEPEND}"
