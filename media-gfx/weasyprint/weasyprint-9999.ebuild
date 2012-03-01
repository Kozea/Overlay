# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=2
PYTHON_DEPEND="*:2.6"
SUPPORT_PYTHON_ABIS=1

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
    dev-python/pystacia
    >=x11-libs/pango-1.29.3
    dev-python/pycairo
    >=dev-python/pygobject-3.0"
