# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} )

inherit distutils-r1 git-2

DESCRIPTION="A writer for docutils conforming to the HTML5 draft"
HOMEPAGE="https://github.com/Kozea/docutils-html5-writer"
EGIT_REPO_URI="git://github.com/Kozea/docutils-html5-writer.git"

LICENSE="Public domain"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-python/html5lib"
DEPEND=""

S="${WORKDIR}/docutils_html5"
