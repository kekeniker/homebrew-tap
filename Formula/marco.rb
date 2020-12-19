# This file was generated by GoReleaser. DO NOT EDIT.
class Marco < Formula
  desc "Marco is a CLI tool for showing Spinnaker application, pipelines and pipeline templates"
  homepage "https://github.com/kekeniker/marco"
  version "0.0.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/kekeniker/marco/releases/download/v0.0.5/marco_0.0.5_darwin_amd64.tar.gz"
    sha256 "a5b7946c8d6698c7a3f83b0c03cbfd22c0e834d708fecedd3031c62f4bbd37d7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kekeniker/marco/releases/download/v0.0.5/marco_0.0.5_linux_amd64.tar.gz"
    sha256 "764db95d8e1c6ff2145a56d2c94cfe7a76c2d81c1e587761b482f446fdaa3c3c"
  end

  def install
    bin.install "marco"
  end

  test do
    system "#{bin}/marco --version"
  end
end
