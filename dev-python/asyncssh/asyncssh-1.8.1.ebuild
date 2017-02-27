# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python3_{5,6} )

inherit distutils-r1

DESCRIPTION="Asynchronous SSHv2 client and server library"
HOMEPAGE="https://pypi.python.org/pypi/asyncssh/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="EPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-python/cryptography"
DEPEND="${RDEPEND}"
