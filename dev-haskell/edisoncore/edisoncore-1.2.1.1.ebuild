# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="profile haddock lib"
CABAL_MIN_VERSION=1.2
inherit haskell-cabal

MY_PN="EdisonCore"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A library of efficient, purely-functional data structures (Core Implementations)"
HOMEPAGE="http://hackage.haskell.org/cgi-bin/hackage-scripts/package/EdisonCore"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE=""	#Fixme: "OtherLicense", please fill in manually
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-lang/ghc-6.4.2
		>=dev-haskell/mtl-1.0
		>=dev-haskell/quickcheck-1.0
		~dev-haskell/edisonapi-1.2.1"

S="${WORKDIR}/${MY_P}"
