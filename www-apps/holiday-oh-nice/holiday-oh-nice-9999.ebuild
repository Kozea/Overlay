# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

DESCRIPTION="Oh nice!"
HOMEPAGE="http://kozea.fr"
SRC_URI=""

LICENSE="Public domain"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
        dev-python/flask
        dev-python/flask-sqlalchemy
        dev-python/oauth2client
        dev-python/httplib2
        dev-python/sqlalchemy"
DEPEND="${RDEPEND}"
