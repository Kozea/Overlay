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
	dev-python/flask-alcool
	dev-python/flask-babel
	dev-python/flask-bcrypt
	dev-python/flask-login
	dev-python/flask-sqlalchemy
	dev-python/flask-weasyprint
	dev-python/flask-wtf
	dev-python/pygal
	dev-python/sqlalchemy
	dev-python/mandrill
	dev-python/psycopg
	net-libs/nodejs[npm]
	dev-ruby/sass
	www-servers/uwsgi[python]"
DEPEND="${RDEPEND}"
