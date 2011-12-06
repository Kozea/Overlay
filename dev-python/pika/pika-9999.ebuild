# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
PYTHON_DEPEND="3"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="2.*"

EGIT_BRANCH="stable-fork-python3"
inherit distutils git-2

DESCRIPTION="Pika is a pure-Python implementation of the AMQP 0-9-1 protocol."
HOMEPAGE="https://github.com/Kozea/${PN}"
EGIT_REPO_URI="git://github.com/Kozea/${PN}.git"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
