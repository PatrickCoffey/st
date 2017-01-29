# rewritten by Schlerp

# Maintainer: mar77i <mar77i at mar77i dot ch>
# Past Maintainer: Gaetan Bisson <bisson@archlinux.org>
# Contributor: Scytrin dai Kinthra <scytrin@gmail.com>

pkgname=st-schlerp-git
_pkgname=st
pkgver=0.7.schlerp
pkgrel=1
pkgdesc='Simple virtual terminal emulator for X, with monofur for HiDPI, transparency and Base16 Hopscotch colour theme'
url='http://st.suckless.org/'
arch=('i686' 'x86_64')
license=('MIT')
options=('zipman')
depends=('libxft')
makedepends=('ncurses' 'libxext' 'git')
epoch=1
# include config.h and any patches you want to have applied here
source=('git://github.com/PatrickCoffey/st.git')
sha1sums=('SKIP')

provides=("${_pkgname}")
conflicts=("${_pkgname}")

prepare() {
	local file
	cd "${_pkgname}"
}

build() {
	cd "${_pkgname}"
	make X11INC=/usr/include/X11 X11LIB=/usr/lib/X11
}

package() {
	cd "${_pkgname}"
	make PREFIX=/usr DESTDIR="${pkgdir}" install
	install -Dm644 LICENSE "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
	install -Dm644 README.md "${pkgdir}/usr/share/doc/${pkgname}/README"
}
