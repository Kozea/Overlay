# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
PYTHON_COMPAT=( python3_{4,5,6} )

inherit distutils-r1 git-2

DESCRIPTION="Jade syntax template adapter for Django, Jinja2, Mako and Tornado templates"
HOMEPAGE="http://github.com/syrusakbary/pyjade"
EGIT_REPO_URI="git://github.com/paradoxxxzero/${PN}.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-python/six[${PYTHON_USEDEP}]"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
