# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

DESCRIPTION="The hydra website generator"
HOMEPAGE="http://kozea.org"
SRC_URI=""

LICENSE="Proprietary"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
        dev-python/top_model[${PYTHON_USEDEP}]
        dev-python/pillow[truetype,${PYTHON_USEDEP}]
        dev-python/multicorn[lxml,docutils${PYTHON_USEDEP}]
        dev-db/multicorn
        dev-python/multicorn[${PYTHON_USEDEP}]
        dev-python/Babel[${PYTHON_USEDEP}]
        dev-python/mandrill[${PYTHON_USEDEP}]
        dev-python/imapclient[${PYTHON_USEDEP}]
        dev-python/python-dateutil[${PYTHON_USEDEP}]
        >=dev-python/flask-0.10[${PYTHON_USEDEP}]
        dev-python/itsdangerous[${PYTHON_USEDEP}]
        dev-python/html5lib[${PYTHON_USEDEP}]
        dev-python/docutils-html5-writer[${PYTHON_USEDEP}]
        dev-python/python-ghostscript[${PYTHON_USEDEP}]
        >=dev-python/wtforms-2.0[${PYTHON_USEDEP}]
        dev-python/wtforms-alchemy[${PYTHON_USEDEP}]
        media-gfx/cairosvg[${PYTHON_USEDEP}]
        dev-python/pillow[${PYTHON_USEDEP}]
        dev-python/pytz[${PYTHON_USEDEP}]
        dev-python/icalendar[${PYTHON_USEDEP}]
        dev-python/alembic[${PYTHON_USEDEP}]
        dev-python/pypet[${PYTHON_USEDEP}]
        dev-python/pyinotify[${PYTHON_USEDEP}]
        >=dev-python/flask-sqlalchemy-0.17[${PYTHON_USEDEP}]
        >=dev-python/sqlalchemy-0.9[${PYTHON_USEDEP}]
        dev-python/flask-weasyprint[${PYTHON_USEDEP}]
        >=dev-python/pygal-1.4[${PYTHON_USEDEP}]
        dev-python/pygal_maps_fr
        dev-python/pyyaml[${PYTHON_USEDEP}]
        media-fonts/cantarell
        www-apps/mammoth
        dev-python/docutils-html5-writer[${PYTHON_USEDEP}]
        dev-python/pyquery[${PYTHON_USEDEP}]
        dev-python/qrcode[${PYTHON_USEDEP}]
        dev-python/sqlalchemy_fdw[${PYTHON_USEDEP}]
        dev-python/flask-login[${PYTHON_USEDEP}]
        dev-python/sqlalchemy-searchable[${PYTHON_USEDEP}]
        dev-python/fawn[${PYTHON_USEDEP}]
        net-libs/nodejs
        dev-python/pyinotify[${PYTHON_USEDEP}]"
RDEPEND="${RDEPEND}"
