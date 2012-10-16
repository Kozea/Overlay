# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4
SUPPORT_PYTHON_ABIS=1
PYTHON_DEPEND="*:2.6"

inherit distutils

DESCRIPTION="A CSS parser, and nothing else."
HOMEPAGE="https://${PN}.org"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
