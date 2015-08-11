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

RDEPEND=""
DEPEND="${RDEPEND}
        dev-python/pillow[truetype]
        dev-python/multicorn[lxml,docutils]
        dev-db/postgis
        dev-db/multicorn
        dev-python/Babel
        dev-python/mandrill
        dev-python/imapclient
        dev-python/python-dateutil
        dev-python/hydra_fdw
        >=dev-python/flask-0.10
        dev-python/html5lib
        dev-python/docutils-html5-writer
        dev-python/python-ghostscript
        =dev-python/wtforms-2.0*
        dev-python/wtforms-alchemy
        media-gfx/cairosvg
        virtual/python-imaging
        dev-python/pytz
        dev-python/icalendar
        dev-python/alembic
        dev-python/pypet
        dev-python/pyinotify
        >=dev-python/flask-sqlalchemy-0.17
        >=dev-python/sqlalchemy-0.9
        dev-python/flask-weasyprint
        >=dev-python/pygal-1.4
        dev-python/pygal_maps_fr
        dev-python/pyyaml
        dev-python/flipflop
        www-apps/mammoth
        dev-python/docutils-html5-writer
        dev-python/pyquery
        dev-python/qrcode
        dev-python/sqlalchemy_fdw
        dev-python/sqlalchemy-searchable
	net-libs/nodejs
        dev-python/pyinotify"
