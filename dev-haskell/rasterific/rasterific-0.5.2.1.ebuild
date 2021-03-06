# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.3

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="Rasterific"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A pure haskell drawing engine"
HOMEPAGE="http://hackage.haskell.org/package/Rasterific"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/dlist-0.6:=[profile?]
	>=dev-haskell/fontyfruity-0.5:=[profile?] <dev-haskell/fontyfruity-0.6:=[profile?]
	>=dev-haskell/free-4.7:=[profile?]
	>=dev-haskell/juicypixels-3.2:=[profile?]
	>=dev-haskell/mtl-1.9:=[profile?]
	>=dev-haskell/primitive-0.5:=[profile?]
	>=dev-haskell/vector-0.9:=[profile?]
	>=dev-haskell/vector-algorithms-0.3:=[profile?]
	>=dev-lang/ghc-7.6.1:=
	>=dev-haskell/linear-1.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
"

S="${WORKDIR}/${MY_P}"
