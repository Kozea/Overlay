# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="httpserv-plugin image-websearch-plugin debug doc +fast-install keepalive extended-host-patterns perl"

inherit autotools

MY_P="${PN}-${PV/_rc/-RC}"
S="${MY_P}"

SRC_URI="mirror://sourceforge/seeks/hippy/${MY_P}.tar.gz"
LICENSE="AGPL-3"

DESCRIPTION="An Open Decentralized Platform for Collaborative Search, Filtering and content Curation"
HOMEPAGE="http://www.seeks-project.info"

DEPEND="sys-devel/autoconf
 sys-devel/automake
 sys-devel/libtool
 dev-libs/libpcre
 net-misc/curl
 dev-libs/libxml2
 app-text/docbook2X
 httpserv-plugin? ( dev-libs/libevent )
 image-websearch-plugin? ( media-libs/opencv )
 perl? ( sys-devel/libperl )
 dev-db/tokyocabinet
 dev-libs/protobuf"
RDEPEND="${DEPEND}"

src_prepare() {
    cd "${S}"
    rm -rf "${S}/src/*/tests"
    rm -rf "${S}/src/plugins/*/tests"
    eautoreconf || die
}

src_configure() {
    cd "${S}"
    rm -rf "${S}/src/*/tests"
    rm -rf "${S}/src/plugins/*/tests"
    econf \
        $(use_enable httpserv-plugin) \
        $(use_enable image-websearch-plugin) \
        $(use_enable debug) \
        $(use_enable fast-install) \
        $(use_enable keepalive) \
        $(use_enable extended-host-patterns) \
        $(use_enable perl) || die
}

src_compile() {
    cd "${S}"
    emake || die
}

src_install() {
    cd "${S}"
    emake DESTDIR="${D}" install || die

    use doc && dodoc FAQ NEWS README || die
    use doc && dohtml EXTENDING.html ctags.html
}
