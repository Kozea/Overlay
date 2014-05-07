# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
PYTHON_COMPAT=( python{3_3,3_4} pypy2_0 )

EGIT_BRANCH="stable-fork-python3"
inherit distutils-r1 git-2

DESCRIPTION="Pika is a pure-Python implementation of the AMQP 0-9-1 protocol."
HOMEPAGE="https://github.com/Kozea/${PN}"
EGIT_REPO_URI="git://github.com/Kozea/${PN}.git"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
