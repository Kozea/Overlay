# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/decorator/decorator-3.4.0-r1.ebuild,v 1.8 2014/04/02 21:20:36 chutzpah Exp $

EAPI=5
PYTHON_COMPAT=( python3_{3,4} )

inherit distutils-r1

DESCRIPTION="Python Data Validation for Humans™."
HOMEPAGE="http://pypi.python.org/pypi/validators"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~alpha amd64 arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc x86 ~amd64-linux ~x86-linux ~x64-macos"
IUSE=""

DEPEND="
    dev-python/setuptools[${PYTHON_USEDEP}]
"
RDEPEND="
    >=dev-python/six-1.4.0
    >=dev-python/decorator-3.4.0
"
