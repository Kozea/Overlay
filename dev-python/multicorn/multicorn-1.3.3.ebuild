# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5,3_6} )

inherit distutils-r1

MY_PN="Multicorn"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Python module of MultiCorn's PostgreSQL extension"
HOMEPAGE="http://multicorn.org"
SRC_URI="https://github.com/Kozea/${MY_PN}/archive/v${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="ldap lxml docutils imap"

RDEPEND="
        dev-python/log-colorizer[${PYTHON_USEDEP}]
        >=dev-python/sqlalchemy-0.8[${PYTHON_USEDEP}]
        ldap? ( dev-python/python3-ldap[${PYTHON_USEDEP}] )
        lxml? ( dev-python/lxml[${PYTHON_USEDEP}] )
        imap? ( dev-python/imapclient[${PYTHON_USEDEP}] )
        docutils? ( dev-python/docutils[${PYTHON_USEDEP}] )"
DEPEND="${RDEPEND}"

S="${WORKDIR}/${MY_P}"
