# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python3_5 )

inherit distutils-r1 git-2

DESCRIPTION="Hou Hou Hou"
HOMEPAGE="https://github.com/Kozea/teepy"

LICENSE="Proprietary"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
EGIT_REPO_URI="https://github.com/Kozea/${PN}.git"

RDEPEND="
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
        dev-python/flask-menu
        dev-python/flask-classy
        dev-python/simplejson
        dev-python/pygal
        dev-python/python-dateutil
        dev-python/sqlalchemy-searchable
        dev-python/weasyprint
        dev-python/flask-babel
        dev-python/wtforms-components
        dev-python/sqlalchemy_fdw
        dev-python/libsass
        dev-python/requests
        dev-python/multicorn
        dev-db/multicorn
        test? (
            dev-python/pytest
            dev-python/pytest-cov
            dev-python/factory-boy
            dev-python/pytest-factoryboy
            dev-python/pytest-flask
            dev-python/pytest-cache
        )"
DEPEND="${RDEPEND}"
