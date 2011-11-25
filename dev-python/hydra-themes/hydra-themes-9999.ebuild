# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="4"

EGIT_BRANCH="scss"
inherit git

DESCRIPTION="The hydra themes"
HOMEPAGE="http://kozea.org"
EGIT_REPO_URI="ssh://git@kozea.fr:27015/~/themes"

LICENSE="Proprietary"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="lighttpd"

RDEPEND=""
DEPEND="${RDEPEND}
        dev-python/pyinotify
        dev-ruby/sass"

THEMES_DIR="/var/lib/hydra/hydra/static/css/themes"

src_install() {
        insinto "${THEMES_DIR}"
        rm -rf .git*
        echo "Generating themes..."
        ./generator.py --once
        echo "Installing generated files..."
        doins -r . || die
        if use lighttpd; then
	        fowners -R lighttpd:lighttpd "${THEMES_DIR}" || die
        fi
}
