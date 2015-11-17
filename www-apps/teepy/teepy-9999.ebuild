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
        dev-python/multicorn
        dev-python/multicorn
        dev-python/psycopg
        dev-python/alembic
        dev-python/sqlalchemy
        dev-python/sqlalchemy-utils
        dev-python/awesome-slugify
        dev-python/passlib
        dev-python/plainform
        dev-python/flask
        dev-python/flask-wtf
        dev-python/flask-login
        dev-python/flask-alcool
        dev-python/flask-classy
        dev-python/flask-babel
        dev-python/flask-menu
        dev-python/simplejson
        dev-python/pygal
        dev-python/python-dateutil
        dev-python/weasyprint
        test? (
            dev-python/pytest
            dev-python/pytest-cov
            dev-python/factory-boy
            dev-python/pytest-factoryboy
            dev-python/pytest-flask
            dev-python/pytest-cache
        )"
DEPEND="${RDEPEND}"
