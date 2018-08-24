# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/sqlalchemy/sqlalchemy-0.7.2.ebuild,v 1.3 2011/09/11 20:11:25 maekke Exp $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_4,3_5,3_6} pypy )

inherit distutils-r1

DESCRIPTION="Easy-to-use, Pythonic and complete IMAP client library with no dependencies outside the Python standard library."
HOMEPAGE="https://pypi.python.org/pypi/mandrill"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~hppa ~ppc ~x86 ~x86-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos"
IUSE=""

RDEPEND="
	>=dev-python/docopt-0.4.0[${PYTHON_USEDEP}]
	>=dev-python/requests-0.13.2[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"
