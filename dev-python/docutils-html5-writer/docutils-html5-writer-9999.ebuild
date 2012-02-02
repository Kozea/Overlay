# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit distutils git-2

DESCRIPTION="A CSS3 preprocessor"
HOMEPAGE="http://csstyle.org"
EGIT_REPO_URI="git://github.com/Kozea/docutils-html5-writer.git"

LICENSE="Public domain"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND=""

S="${WORKDIR}/docutils_html5"
