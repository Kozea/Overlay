# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python{3_3,3_4,3_5} )

inherit distutils-r1 git-2

DESCRIPTION="We all need a top model for hydra related things"
HOMEPAGE="https://github.com/Kozea/${PN}"
EGIT_REPO_URI="git@github.com:Kozea/top_model.git"

LICENSE="Proprietary"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="
        dev-python/Babel
        dev-python/flask
        dev-python/flask-sqlalchemy
        dev-python/flask-weasyprint
        dev-python/multicorn[lxml,docutils]
        dev-python/mandrill
        dev-python/pillow[truetype]
        dev-python/pygal
        dev-python/pygal_maps_fr
        dev-python/pytz
        dev-python/pyyaml
        dev-python/sqlalchemy
        dev-python/sqlalchemy-searchable
        =dev-python/wtforms-2.0*
        dev-python/wtforms-alchemy
        dev-python/alembic
        dev-python/sqlalchemy_fdw
        dev-python/docutils-html5-writer
        dev-python/python-ghostscript"
