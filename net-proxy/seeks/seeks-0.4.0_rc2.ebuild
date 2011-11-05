# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="An Open Decentralized Platform for Collaborative Search, Filtering and content Curation"
HOMEPAGE="http://www.seeks-project.info"
SRC_URI="mirror://sourceforge/seeks/hippy/${PN}-${PV/_rc/-RC}.tar.gz"
LICENSE="AGPL-3"

EAPI="3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="httpserv-plugin image-websearch-plugin debug +fast-install keepalive extended-host-patterns perl"

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

src_unpack() {
    unpack ${A}
    cd "${S}"

    # Remove problematic LDFLAGS declaration
    sed -i -e '/^LDFLAGS/d' src/Makefile.am
    sed -i 's/-Wl//;s/-O1//;s/--as-needed//;s/-o//' m4/libtool.m4

    # Rerun autotools
    einfo "Regenerating autotools files..."
    WANT_ACLOCAL=1.11 aclocal || die "aclocal failed"
    WANT_AUTOCONF=2.65 autoconf || die "autoconf failed"
    WANT_AUTOMAKE=1.11 automake || die "automake failed"
}

src_compile() {
  econf \
    $(use_enable httpserv-plugin) \
    $(use_enable image-websearch-plugin) \
    $(use_enable debug) \
    $(use_enable fast-install) \
    $(use_enable keepalive) \
    $(use_enable extended-host-patterns) \
    $(use_enable perl) \
    || die "Error: econf failed!"
  emake || die "Error: emake failed!"

}

src_install() {
    emake DESTDIR="${D}" install || die

    dodoc FAQ NEWS README || die
    dohtml EXTENDING.html ctags.html
}
