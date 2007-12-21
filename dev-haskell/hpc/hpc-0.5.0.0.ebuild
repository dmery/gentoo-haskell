# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

CABAL_FEATURES="bin lib haddock"
inherit haskell-cabal

DESCRIPTION="Hpc is a tool-kit to record and display Haskell program coverage."
HOMEPAGE="http://projects.unsafeperformio.com/hpc/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-lang/ghc-6.6"
