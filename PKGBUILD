# Maintainer: vir0id

srcname=Catppuccin_Blender
pkgname=Catppuccin_Blender
pkgdesc='Catppuccin Themes for Blender'
pkgver=1.0
pkgrel=1
arch=('any')
url="https://github.com/igorjoxa1118/Catppuccin_Blender"
license=('GPL')
makedepends=('git')
source=("git+$url.git")
sha256sums=('SKIP')

package() {
  cd ${srcdir}/${srcname}/
  install -dm755 "${pkgdir}/$USER/.config/blender/colorshemas"

  cp -rf themes/* "$pkgdir/$USER/.config/blender/colorshemas"
}
