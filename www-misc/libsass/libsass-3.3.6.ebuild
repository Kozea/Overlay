# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit autotools

DESCRIPTION="A C/C++ implementation of a Sass compiler"
HOMEPAGE="http://libsass.org"
SRC_URI="https://github.com/sass/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 amd64"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"

src_prepare() {
	eautoreconf
}
