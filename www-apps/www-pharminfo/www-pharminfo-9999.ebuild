# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

DESCRIPTION="The Pharminfo www website"
HOMEPAGE="http://pharminfo.fr"

LICENSE="Proprietary"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
        dev-python/flask
        dev-python/mandrill
        dev-python/top_model"
DEPEND="${RDEPEND}"
