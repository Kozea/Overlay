# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

DESCRIPTION="Fantastic creature with parts from different animals"
HOMEPAGE="http://docsite.fr"

LICENSE="Proprietary"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
    dev-python/flask-login
    dev-python/alembic
    dev-python/python-dateutil
    dev-python/top_model
    dev-python/vobject"
DEPEND="${RDEPEND}"
