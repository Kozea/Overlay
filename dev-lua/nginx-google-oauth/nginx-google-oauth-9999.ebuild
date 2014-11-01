# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit git-2

DESCRIPTION="Lua module to add Google OAuth to nginx"
HOMEPAGE="https://github.com/agoragames/nginx-google-oauth"
EGIT_REPO_URI="https://github.com/agoragames/nginx-google-oauth.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	www-servers/nginx[nginx_modules_http_lua]
	dev-lua/lua-cjson
	dev-lua/luasec"

DEPEND="${RDEPEND}"

NGINX_DIR="/var/lib/nginx/${PN}"

src_prepare() {
	epatch "${FILESDIR}"/https.patch
}

src_install() {
        insinto "${NGINX_DIR}"
        rm -rf .git* chef
        doins -r . || die
}
