# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.5

CABAL_FEATURES="bin test-suite"
inherit haskell-cabal

DESCRIPTION="A parallel implementation of the Sorokina/Zeilfelder spline scheme"
HOMEPAGE="http://michael.orlitzky.com/code/spline3.php"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cmdargs-0.10:=
	>=dev-haskell/missingh-1:=
	<dev-haskell/repa-3.4:=
	<dev-haskell/repa-algorithms-3.4:=
	<dev-haskell/repa-io-3.4:=
	>=dev-haskell/tasty-0.8:=
	>=dev-haskell/tasty-hunit-0.8:=
	>=dev-haskell/tasty-quickcheck-0.8.1:=
	>=dev-haskell/vector-0.10:=
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/doctest-0.9 )
"
