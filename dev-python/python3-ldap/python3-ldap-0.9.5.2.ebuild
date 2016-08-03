# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/python-ldap/python-ldap-2.4.15.ebuild,v 1.2 2014/06/26 15:18:18 idella4 Exp $

EAPI=5

PYTHON_COMPAT=( python2_7 python3_{3,4,5} )

inherit distutils-r1 multilib

DESCRIPTION="A strictly RFC 4511 conforming LDAP V3 pure Python client"
HOMEPAGE="https://bitbucket.org/python3ldap/python3-ldap"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~x86-fbsd ~x86-solaris"
IUSE=""

RDEPEND="=dev-python/pyasn1-0.1.7[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"
