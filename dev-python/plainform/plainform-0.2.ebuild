# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/pyphen/pyphen-0.9.1.ebuild,v 1.2 2014/03/31 21:23:59 mgorny Exp $

EAPI="5"
PYTHON_COMPAT=( python3_4 )

inherit distutils-r1

DESCRIPTION="Formidable forms formed with WTForms"
SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"
HOMEPAGE="https://github.com/Kozea/plainform"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-python/wtforms-2.0"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
