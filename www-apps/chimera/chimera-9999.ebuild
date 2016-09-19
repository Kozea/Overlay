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
    dev-python/aiohttp
    dev-python/log-colorizer
    dev-python/pytz
    dev-python/pyyaml
    dev-python/pygal_maps_fr
    dev-python/pygal
    dev-python/weasyprint
    dev-python/flask-weasyprint
    dev-python/flask-login
    dev-python/flask
    dev-python/wtforms-alchemy
    dev-python/wtforms
    dev-python/alembic
    dev-python/sqlalchemy_fdw
    dev-python/docutils-html5-writer
    dev-python/python-ghostscript
    dev-python/python-dateutil
    dev-python/top_model
    dev-python/vobject"
DEPEND="${RDEPEND}"
