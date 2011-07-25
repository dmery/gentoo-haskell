# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour"
inherit base haskell-cabal

DESCRIPTION="Haml-like template files that are compile-time checked"
HOMEPAGE="http://www.yesodweb.com/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
RESTRICT="test" # upstream didn't bundle them

RDEPEND="<dev-haskell/blaze-builder-0.4
		=dev-haskell/blaze-html-0.4*
		=dev-haskell/failure-0.1*
		<dev-haskell/parsec-4
		<dev-haskell/text-0.12
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( >=dev-haskell/cabal-1.10
			dev-haskell/hunit
			dev-haskell/json-types
			>=dev-haskell/quickcheck-2
			dev-haskell/test-framework
			dev-haskell/test-framework-hunit
		)
		"

PATCHES=("${FILESDIR}/hamlet-0.8.2.1-remove-testsuite.patch"
	"${FILESDIR}/hamlet-0.8.2.1-ghc-7.2.patch"
	)

src_configure() {
	cabal_src_configure $(use_enable test tests)
}
