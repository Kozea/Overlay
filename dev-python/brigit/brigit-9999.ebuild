# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
SUPPORT_PYTHON_ABIS="1"

inherit distutils git

DESCRIPTION="A very simple python git wrapper module"
HOMEPAGE="https://github.com/paradoxxxzero/${PN}"
EGIT_REPO_URI="git://github.com/paradoxxxzero/${PN}.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-vcs/git"
