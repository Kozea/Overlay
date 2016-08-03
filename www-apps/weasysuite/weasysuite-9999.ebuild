# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python3_{4,5} )

DESCRIPTION="Test WeasyPrint with the W3C test suites."
HOMEPAGE="http://test.weasyprint.org"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
        dev-python/flask[${PYTHON_USEDEP}]
        dev-python/weasyprint[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"
