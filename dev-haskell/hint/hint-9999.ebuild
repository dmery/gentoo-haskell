# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.12

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour"
inherit base darcs haskell-cabal

DESCRIPTION="Runtime Haskell interpreter (GHC API wrapper)"
HOMEPAGE="http://projects.haskell.org/hint"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/ghc-mtl-9999
		dev-haskell/ghc-paths
		dev-haskell/haskell-src
		>=dev-haskell/monadcatchio-mtl-0.2
		dev-haskell/mtl
		dev-haskell/utf8-string
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2.3"

EDARCS_REPOSITORY="http://code.haskell.org/hint/devel"

PATCHES=("${FILESDIR}/${P}-ghc-7.2.patch")
