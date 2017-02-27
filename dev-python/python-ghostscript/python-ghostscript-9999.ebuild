# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python3_{3,4,5,6} )

inherit distutils-r1 git-2

DESCRIPTION="Package used for ghostscript."
EGIT_REPO_URI="git://github.com/Kozea/ghostscript.git"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="amd64 x86 ~x86-fbsd"
IUSE=""
RESTRICT="test"

RDEPEND="app-text/ghostscript-gpl"
DEPEND="${RDEPEND}"
