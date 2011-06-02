# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
SUPPORT_PYTHON_ABIS="1"

inherit distutils

DESCRIPTION="DB-API 2.0 compatible Pure-Python interface to the PostgreSQL database engine"
HOMEPAGE="http://packages.python.org/${PN}/"
SRC_URI="http://pybrary.net/${PN}/dist/${P}.tar.gz
	   http://pybrary.net/${PN}/dist/${PN}-py3-${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-db/postgresql-base"
DEPEND="${RDEPEND}
	dev-python/setuptools"

DISTUTILS_USE_SEPARATE_SOURCE_DIRECTORIES="1"

src_prepare() {
		preparation() {
				if [[ "${PYTHON_ABI}" == 3.* ]]; then
						cp -pr "${WORKDIR}/${PN}-py3-${PV}" "${S}-${PYTHON_ABI}" || return 1
				else
						cp -pr "${S}" "${S}-${PYTHON_ABI}" || return 1
				fi
		}
		python_execute_function -q preparation
}
