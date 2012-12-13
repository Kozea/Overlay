# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="2"

inherit multilib autotools

DESCRIPTION="A nagios plugin for checking PostgreSQL servers"
HOMEPAGE="http://bucardo.org/wiki/Check_postgres"
SRC_URI="https://github.com/bucardo/check_postgres/archive/${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="net-analyzer/nagios-plugins"
RDEPEND="${DEPEND}"

src_install() {
	exeinto /usr/$(get_libdir)/nagios/plugins
	doexe check_postgres
}
