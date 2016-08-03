# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

DESCRIPTION="A divine hero in Greek mythology, the son of Zeus"
HOMEPAGE="http://kozea.fr"
SRC_URI=""

LICENSE="Proprietary"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
        dev-python/tornado-systemd
        www-servers/tornado
        dev-python/wtforms
        dev-python/sqlalchemy
        dev-python/psycopg
        dev-python/wtforms-alchemy
        dev-python/pbkdf2
        dev-python/pygal_maps_fr
        dev-python/pygal"
DEPEND="${RDEPEND}"
