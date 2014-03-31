# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ruby/bcrypt-ruby/bcrypt-ruby-3.1.7.ebuild,v 1.1 2014/03/06 08:00:22 graaff Exp $

EAPI=5

USE_RUBY="ruby18 ruby19 ruby20"

RUBY_FAKEGEM_RECIPE_TEST="rspec"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="CHANGELOG"

RUBY_FAKEGEM_NAME="awesome_nested_set"

inherit multilib ruby-fakegem

DESCRIPTION="An awesome replacement for acts_as_nested_set and better_nested_set."
HOMEPAGE="https://github.com/collectiveidea/awesome_nested_set"
LICENSE="MIT"

KEYWORDS="~amd64 ~arm ~ppc ~ppc64 ~x86 ~x86-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~sparc64-solaris ~x64-solaris ~x86-solaris"
SLOT="0"
IUSE=""
