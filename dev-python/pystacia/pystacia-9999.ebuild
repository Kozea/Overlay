# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/tox/tox-1.3.ebuild,v 1.2 2012/02/15 11:32:00 djc Exp $

EAPI=4

PYTHON_DEPEND="*"
SUPPORT_PYTHON_ABIS="1"

inherit distutils mercurial

DESCRIPTION="Python raster imaging library"
HOMEPAGE="http://liquibits.bitbucket.org/"
EHG_REPO_URI="https://bitbucket.org/liZe/${PN}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="imagemagick"

DEPEND="dev-python/six
        dev-python/decorator
        imagemagick? ( media-gfx/imagemagick )"
RDEPEND="${DEPEND}"

src_prepare() {
        if use imagemagick; then
                export PYSTACIA_SKIP_BINARIES=1
        fi
}
