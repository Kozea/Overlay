# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="The JavaScript Task Runner"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc"

DEPEND=""
RDEPEND="
    >net-libs/nodejs-0.8.10
    ${DEPEND}"

HOMEPAGE="https://www.npmjs.org/package/${PN}"
SRC_URI="http://registry.npmjs.org/${PN}/-/${P}.tgz"

src_unpack() {
    unpack "${A}"
    mv "${WORKDIR}/package" ${S}
}

npm_src_install() {
    local npm_files="${NPM_FILES} ${NPM_EXTRA_FILES}"
    local node_modules="${D}/usr/$(get_libdir)/node_modules/${NPM_MODULE}"

    mkdir -p ${node_modules} || die "Could not create DEST folder"

    for f in ${npm_files}
    do
        if [[ -e "${S}/$f" ]]; then
            cp -r "${S}/$f" ${node_modules}
        fi
    done
}
