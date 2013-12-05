# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/flup/flup-1.0.2-r1.ebuild,v 1.6 2013/10/22 11:50:20 grobian Exp $

EAPI=5

PYTHON_COMPAT=( python3_3 )

inherit distutils-r1 git-2

DESCRIPTION="FastCGI/WSGI gateway"
HOMEPAGE="git://github.com/Kozea/${PN}.git"
EGIT_REPO_URI="git://github.com/Kozea/${PN}.git"

LICENSE="BSD"
SLOT="3"
KEYWORDS="amd64 ~arm ~ia64 ppc ~ppc64 ~sparc x86 ~x86-fbsd ~amd64-linux ~ia64-linux ~x86-linux ~x64-macos ~x86-macos"
IUSE=""

RDEPEND=""
DEPEND=""
