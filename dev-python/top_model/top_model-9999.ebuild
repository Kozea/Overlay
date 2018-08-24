# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python{3_4,3_5,3_6,3_7} )

inherit distutils-r1 git-2

DESCRIPTION="We all need a top model for hydra related things"
HOMEPAGE="https://github.com/Kozea/${PN}"
EGIT_REPO_URI="git@github.com:Kozea/top_model.git"

LICENSE="Proprietary"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
        dev-python/Babel[${PYTHON_USEDEP}]
        dev-python/flask[${PYTHON_USEDEP}]
        dev-python/flask-sqlalchemy[${PYTHON_USEDEP}]
        dev-python/flask-weasyprint[${PYTHON_USEDEP}]
        dev-python/multicorn[lxml,docutils,${PYTHON_USEDEP}]
        dev-python/mandrill[${PYTHON_USEDEP}]
        dev-python/pillow[truetype,${PYTHON_USEDEP}]
        dev-python/pygal[${PYTHON_USEDEP}]
        dev-python/pygal_maps_fr[${PYTHON_USEDEP}]
        dev-python/pytz[${PYTHON_USEDEP}]
        dev-python/pyyaml[${PYTHON_USEDEP}]
        dev-python/sqlalchemy[${PYTHON_USEDEP}]
        >=dev-python/sqlalchemy-searchable-1.0.3[${PYTHON_USEDEP}]
        dev-python/wtforms[${PYTHON_USEDEP}]
        dev-python/wtforms-alchemy[${PYTHON_USEDEP}]
        dev-python/alembic[${PYTHON_USEDEP}]
        dev-python/sqlalchemy_fdw[${PYTHON_USEDEP}]
        dev-python/docutils-html5-writer[${PYTHON_USEDEP}]
        dev-python/rrule34[${PYTHON_USEDEP}]
        dev-python/raven[${PYTHON_USEDEP}]
        dev-python/python-ghostscript[${PYTHON_USEDEP}]
        dev-python/python-magic[${PYTHON_USEDEP}]
        dev-python/vobject[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"
