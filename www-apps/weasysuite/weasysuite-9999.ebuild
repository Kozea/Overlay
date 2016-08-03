# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

DESCRIPTION="Test WeasyPrint with the W3C test suites."
HOMEPAGE="http://test.weasyprint.org"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
        dev-python/flask
        dev-python/weasyprint"
DEPEND="${RDEPEND}"
