# This file was generated by GoReleaser. DO NOT EDIT.
class Spa < Formula
  desc "Spinnaker Admin tools"
  homepage "https://github.com/kekeniker/spa"
  version "0.0.1"
  bottle :unneeded

  if OS.mac?
    url "http://github.com/kekeniker/spa/releases/v0.0.1/spa_0.0.1_darwin_amd64.tar.gz", :using => CurlDownloadStrategy.
    sha256 "f17534681c198cdb8d0434332a836314219343940b6b60bd183ecdfc7f780d9e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "http://github.com/kekeniker/spa/releases/v0.0.1/spa_0.0.1_linux_amd64.tar.gz", :using => CurlDownloadStrategy.
    sha256 "ed61c66802ebd7d38f93b193caee0dabffc9abd3c9c5f1a9589606292c377e78"
  end

  def install
    bin.install "spa"
  end

  test do
    system "#{bin}/spa --version"
  end
end
