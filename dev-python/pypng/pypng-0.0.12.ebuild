# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
SUPPORT_PYTHON_ABIS="1"

inherit distutils

DESCRIPTION="PyPNG allows PNG image files to be read and written using pure Python."
HOMEPAGE="http://pypi.python.org/pypi/${PN}/"
SRC_URI="http://pypi.python.org/packages/source/${PN:0:1}/${PN}/${PN}-${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"

DISTUTILS_USE_SEPARATE_SOURCE_DIRECTORIES="1"

src_prepare() {
        distutils_src_prepare

        2to3_conversion() {
                [[ "${PYTHON_ABI}" == 2.* ]] && return
                2to3-${PYTHON_ABI} -nw --no-diffs .
        }
        python_execute_function -s 2to3_conversion
}

