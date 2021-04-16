# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210415.0.232827"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210415.0.232827/kopia-20210415.0.232827-macOS-x64.tar.gz"
    sha256 "028b29df3e61b2562beaa6bf251153ce81135256fd0bcc643e0e91db6352e36e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210415.0.232827/kopia-20210415.0.232827-macOS-arm64.tar.gz"
    sha256 "c6269da8145436fc298b96b7a8a305c33b14d80267e5b1dd9f9770ce1d16a8f7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210415.0.232827/kopia-20210415.0.232827-linux-x64.tar.gz"
    sha256 "bdb0ce149039474fbe29d158a9d9b6cd64cff05b5fe44339766c8b6c60929ae2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210415.0.232827/kopia-20210415.0.232827-linux-arm.tar.gz"
    sha256 "a0bdd4bc2dbb1612b3d73ba1e7a4a801d824ea83ceae86acd9d1fd00fe8a9e26"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210415.0.232827/kopia-20210415.0.232827-linux-arm64.tar.gz"
    sha256 "802bd3c0701d621de59bc550730d6c97ff8cd1e5ae1cac125a5bf7a556a35825"
  end

  def install
    bin.install "kopia"
  end
end
