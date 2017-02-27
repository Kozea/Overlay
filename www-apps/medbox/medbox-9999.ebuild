# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python3_{5,6} )

inherit distutils-r1 git-2

DESCRIPTION="A single box for your medicine"
HOMEPAGE="https://github.com/Kozea/medbox"
EGIT_REPO_URI="git@github.com:Kozea/${PN}.git"

LICENSE="MIT"
KEYWORDS="~amd64 ~x86"

SLOT="0"

RDEPEND="
    dev-python/top_model[${PYTHON_USEDEP}]
    dev-python/unrest[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"
