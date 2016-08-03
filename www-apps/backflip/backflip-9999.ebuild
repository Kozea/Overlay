# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

DESCRIPTION="A lovely sequence of body movements"
HOMEPAGE="http://kozea.fr"
SRC_URI=""

LICENSE="Proprietary"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-python/xlrd[${PYTHON_USEDEP}]
	dev-python/flask-alcool[${PYTHON_USEDEP}]
	dev-python/flask-babel[${PYTHON_USEDEP}]
	dev-python/flask-bcrypt[${PYTHON_USEDEP}]
	dev-python/flask-login[${PYTHON_USEDEP}]
	dev-python/flask-sqlalchemy[${PYTHON_USEDEP}]
	dev-python/flask-weasyprint[${PYTHON_USEDEP}]
	dev-python/flask-wtf[${PYTHON_USEDEP}]
	dev-python/plainform[${PYTHON_USEDEP}]
	dev-python/pygal[${PYTHON_USEDEP}]
	dev-python/sqlalchemy[${PYTHON_USEDEP}]
	dev-python/mandrill[${PYTHON_USEDEP}]
	dev-python/psycopg[${PYTHON_USEDEP}]
	net-libs/nodejs[npm]
	www-servers/uwsgi[python]"
DEPEND="${RDEPEND}"
