# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/sqlalchemy/sqlalchemy-0.7.2.ebuild,v 1.3 2011/09/11 20:11:25 maekke Exp $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7,3_2,3_3} pypy{1_9,2_0} )

inherit distutils-r1

MY_PN="IMAPClient"
MY_P="${MY_PN}-${PV/_}"

DESCRIPTION="Easy-to-use, Pythonic and complete IMAP client library with no dependencies outside the Python standard library."
HOMEPAGE="http://imapclient.freshfoo.com/"
SRC_URI="http://freshfoo.com/projects/${MY_PN}/${MY_P}.zip"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~hppa ~ppc ~x86 ~x86-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos"
IUSE=""

RDEPEND="dev-python/setuptools"
DEPEND="${RDEPEND}"

S="${WORKDIR}/${MY_P}"
