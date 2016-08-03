# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

DESCRIPTION="Teepy website"
HOMEPAGE="http://kozea.fr"

LICENSE="Proprietary"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
        dev-python/multicorn[${PYTHON_USEDEP}]
        dev-db/multicorn
        dev-python/psycopg[${PYTHON_USEDEP}]
        dev-python/alembic[${PYTHON_USEDEP}]
        dev-python/sqlalchemy[${PYTHON_USEDEP}]
        dev-python/sqlalchemy-utils[${PYTHON_USEDEP}]
        dev-python/awesome-slugify[${PYTHON_USEDEP}]
        dev-python/passlib[${PYTHON_USEDEP}]
        dev-python/plainform[${PYTHON_USEDEP}]
        dev-python/flask[${PYTHON_USEDEP}]
        dev-python/flask-wtf[${PYTHON_USEDEP}]
        dev-python/flask-login[${PYTHON_USEDEP}]
        dev-python/flask-alcool[${PYTHON_USEDEP}]
        dev-python/flask-classy[${PYTHON_USEDEP}]
        dev-python/flask-babel[${PYTHON_USEDEP}]
        dev-python/flask-menu[${PYTHON_USEDEP}]
        dev-python/simplejson[${PYTHON_USEDEP}]
        dev-python/pygal[${PYTHON_USEDEP}]
        dev-python/python-dateutil[${PYTHON_USEDEP}]
        dev-python/weasyprint[${PYTHON_USEDEP}]
        test? (
            dev-python/pytest[${PYTHON_USEDEP}]
            dev-python/pytest-cov[${PYTHON_USEDEP}]
            dev-python/factory-boy[${PYTHON_USEDEP}]
            dev-python/pytest-factoryboy[${PYTHON_USEDEP}]
            dev-python/pytest-flask[${PYTHON_USEDEP}]
            dev-python/pytest-cache[${PYTHON_USEDEP}]
        )"
DEPEND="${RDEPEND}"
