# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3} )

inherit distutils-r1 git-2

DESCRIPTION="A fdw for hydra."
HOMEPAGE="http://kozea.org"
EGIT_REPO_URI="ssh://git@git.kozea.fr:27015/~/hydrafdw"

LICENSE="Proprietary"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
