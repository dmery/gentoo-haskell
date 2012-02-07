# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.13

EAPI="4"

CABAL_FEATURES="bin lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="2D and 3D plots using gnuplot"
HOMEPAGE="http://www.haskell.org/haskellwiki/Gnuplot"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.8.2
		<dev-haskell/monoid-transformer-0.1
		>=dev-haskell/time-1.1
		<dev-haskell/utility-ht-0.1
		sci-visualization/gnuplot"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	sed -e 's@process >= 1.0 && < 1.1@process >= 1.0 \&\& < 1.2@' \
		-e 's@array >= 0.1 && <0.4@array >= 0.1 \&\& <0.5@' \
		-e 's@time >= 1.1 && < 1.3@time >= 1.1 \&\& < 1.5@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}
