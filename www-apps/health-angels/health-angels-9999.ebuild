# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

DESCRIPTION="The hydra administration website"
HOMEPAGE="http://kozea.org"
SRC_URI=""

LICENSE="Proprietary"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	dev-python/log-colorizer
	dev-python/flask
	dev-python/sqlalchemy
	dev-python/wtforms
	>=dev-python/wtforms-alchemy-9999"
