# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal vcs-snapshot

DESCRIPTION="Cryptol: The Language of Cryptography"
HOMEPAGE="http://hackage.haskell.org/package/cryptol"
SRC_URI="https://github.com/GaloisInc/${PN}/tarball/v${PV} -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS=" ~amd64 ~x86"
IUSE="static"

RDEPEND="dev-haskell/ansi-terminal:=[profile?]
	>=dev-haskell/executable-path-0.0.3:=[profile?]
	>=dev-haskell/graphscc-1.0.4:=[profile?]
	dev-haskell/haskeline:=[profile?]
	>=dev-haskell/monadlib-3.7.2:=[profile?]
	>=dev-haskell/mtl-2.1:=[profile?]
	>=dev-haskell/presburger-1.1:=[profile?]
	>=dev-haskell/quickcheck-2.7:2=[profile?]
	>=dev-haskell/random-1.0.1:=[profile?]
	>=dev-haskell/smtlib-1.0.7:=[profile?]
	>=dev-haskell/syb-0.4:=[profile?]
	>=dev-haskell/text-1.1:=[profile?]
	>=dev-haskell/transformers-0.3:=[profile?]
	>=dev-haskell/utf8-string-0.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	dev-haskell/alex
	>=dev-haskell/cabal-1.18.1.3
	dev-haskell/happy
"

src_configure() {
	./configure # https://github.com/GaloisInc/cryptol/pull/23

	haskell-cabal_src_configure \
		$(cabal_flag static static)
}
