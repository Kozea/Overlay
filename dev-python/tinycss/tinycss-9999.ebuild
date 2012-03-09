# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4
SUPPORT_PYTHON_ABIS=1
PYTHON_DEPEND="*:2.6"
RESTRICT_PYTHON_ABIS="*-jython *-pypy-*"

inherit distutils git-2

DESCRIPTION="A CSS parser, and nothing else."
HOMEPAGE="https://${PN}.org"
EGIT_REPO_URI="git://github.com/SimonSapin/${PN}.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="lxml"

RDEPEND="lxml? ( dev-python/lxml )"
DEPEND="${RDEPEND}"
