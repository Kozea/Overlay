# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit distutils git-2

MY_PN="CairoSVG"

DESCRIPTION="A SVG converter based on Cairo. It can export SVG files to PDF, PostScript and PNG files."
HOMEPAGE="https://${PN}.org"
EGIT_REPO_URI="git://github.com/Kozea/${MY_PN}.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="lxml css"

RDEPEND="css? ( dev-python/cssutils )
        lxml? ( dev-python/lxml )
        dev-python/pycairo"
DEPEND="${RDEPEND}"
