# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="2"

inherit git-2

DESCRIPTION="Nagios plugins for Kozea"
HOMEPAGE="https://github.com/Kozea/nagios-kozea-plugins"
EGIT_REPO_URI="git://github.com/Kozea/nagios-kozea-plugins.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="net-analyzer/nagios-plugins"
RDEPEND="${DEPEND}"

src_install() {
	exeinto /usr/$(get_libdir)/nagios/plugins
	newexe check_ftpfiles.pl check_ftpfiles
}
