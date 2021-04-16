# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210415.0.212627"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210415.0.212627/kopia-20210415.0.212627-macOS-x64.tar.gz"
    sha256 ""
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210415.0.212627/kopia-20210415.0.212627-macOS-arm64.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210415.0.212627/kopia-20210415.0.212627-linux-x64.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210415.0.212627/kopia-20210415.0.212627-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210415.0.212627/kopia-20210415.0.212627-linux-arm64.tar.gz"
    sha256 ""
  end

  def install
    bin.install "kopia"
  end
end
