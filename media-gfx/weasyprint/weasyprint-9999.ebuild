# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit distutils git

MY_PN="WeasyPrint"

DESCRIPTION="WeasyPrint converts HTML/CSS documents to PDF."
HOMEPAGE="https://${PN}.org"
EGIT_REPO_URI="git://github.com/Kozea/${MY_PN}.git"

LICENSE="AGPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="
    ${DEPEND}
    >=dev-python/cssutils-0.9.8_alpha3
    dev-python/imaging
    >=x11-libs/pango-1.29.3
    dev-python/pycairo
    >=dev-python/pygobject-3.0"
