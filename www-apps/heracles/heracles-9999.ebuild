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
        dev-python/tornado-systemd[${PYTHON_USEDEP}]
        www-servers/tornado[${PYTHON_USEDEP}]
        dev-python/wtforms[${PYTHON_USEDEP}]
        dev-python/sqlalchemy[${PYTHON_USEDEP}]
        dev-python/psycopg[${PYTHON_USEDEP}]
        dev-python/wtforms-alchemy[${PYTHON_USEDEP}]
        dev-python/pbkdf2[${PYTHON_USEDEP}]
        dev-python/pygal_maps_fr[${PYTHON_USEDEP}]
        dev-python/pygal[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"
