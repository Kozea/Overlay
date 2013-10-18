# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

inherit git-2

DESCRIPTION="The hydra themes"
HOMEPAGE="http://kozea.org"
EGIT_REPO_URI="ssh://git@git.kozea.fr:27015/~/hydra"
EGIT_COMMIT="v${PV}"

LICENSE="Proprietary"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="lighttpd"

RDEPEND=""
DEPEND="${RDEPEND}
        =dev-ruby/compass-0.12*"

HYDRA_THEMES_DIR="/var/lib/${PN}"

src_install() {
        insinto "${HYDRA_THEMES_DIR}"
        rm -rf .git*
        echo "Generating themes..."
        ./hydra/static/build_for_prod.sh
        doins -r ./hydra/static/css || die
        if use lighttpd; then
	        fowners -R lighttpd:postgres "${HYDRA_THEMES_DIR}" || die
            fperms -R g+rws "${HYDRA_THEMES_DIR}" || die
        fi
}
