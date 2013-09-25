# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

inherit git-2

DESCRIPTION="Database of medicine images"
HOMEPAGE="http://kozea.org"
EGIT_REPO_URI="ssh://git@git.kozea.fr:27015/~/{$PN}"

LICENSE="Proprietary"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND=""

IMG_DIR="/var/lib/{$PN}"

src_install() {
        insinto "${IMG_DIR}"
        git clean -fxd
        rm -rf .git*
        doins -r . || die
        fowners -R postgres:postgres "${IMG_DIR}" || die
}
