cask 'mozart2' do
  version '2.0.0-alpha.0+build.4116.bdeaf6c'
  sha256 '4f077b0658557e532bfa7519977ce9870c55350a1cb395ef77bcab623c70ee04'

  # downloads.sourceforge.net/mozart-oz was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/mozart-oz/mozart2-#{version}-x86_64-darwin.dmg"
  name 'Mozart'
  homepage 'http://mozart.github.io/'
  license :oss

  app 'Mozart2.app'
end
