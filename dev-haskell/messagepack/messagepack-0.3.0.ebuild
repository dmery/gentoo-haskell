# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.4

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Serialize instance for Message Pack Object"
HOMEPAGE="https://github.com/rodrigosetti/messagepack"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.12:=[profile?] <dev-haskell/attoparsec-0.13:=[profile?]
	>=dev-haskell/cereal-0.4:=[profile?] <dev-haskell/cereal-0.5:=[profile?]
	>=dev-haskell/text-1:=[profile?] <dev-haskell/text-2:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( >=dev-haskell/quickcheck-2 <dev-haskell/quickcheck-3
		>=dev-haskell/test-framework-0.8 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-quickcheck2-0.3 <dev-haskell/test-framework-quickcheck2-0.4
		>=dev-haskell/test-framework-th-0.2 <dev-haskell/test-framework-th-0.3 )
"
