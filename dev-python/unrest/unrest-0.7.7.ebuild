# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python3_{4,5,6,7} pypy )

inherit distutils-r1

DESCRIPTION="A troubling rest api library for sqlalchemy models"
HOMEPAGE="https://pypi.python.org/pypi/unrest/0.1.2"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	dev-python/sqlalchemy[${PYTHON_USEDEP}]
	dev-python/python-dateutil[${PYTHON_USEDEP}]
	dev-python/setuptools"[${PYTHON_USEDEP}]
DEPEND="${RDEPEND}"
