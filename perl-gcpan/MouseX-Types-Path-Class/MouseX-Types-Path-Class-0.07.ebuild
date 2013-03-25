# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.16.4

EAPI="2"

MODULE_AUTHOR="MASAKI"


inherit perl-module

DESCRIPTION="A Path::Class type library for Mouse"

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-perl/Mouse-1.40.0
	dev-perl/Path-Class
	>=perl-gcpan/MouseX-Types-0.06
	perl-gcpan/Test-UseAllModules
	dev-lang/perl"