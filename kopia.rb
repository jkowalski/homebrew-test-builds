# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210416.0.63141"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.63141/kopia-20210416.0.63141-macOS-x64.tar.gz"
    sha256 "d3e9aef3690078087914e0b03ca98a8517f794d583f5ffe0fac838c187e08537"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.63141/kopia-20210416.0.63141-macOS-arm64.tar.gz"
    sha256 "a8251f3cded95e961647bce1fd0bb1e15247975265cef9f39ff675c548dc2935"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.63141/kopia-20210416.0.63141-linux-x64.tar.gz"
    sha256 "2c56b61db8a76dda133f310aca0d1dc1879c7e6b5b1f9f2f63b273795b905d50"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.63141/kopia-20210416.0.63141-linux-arm.tar.gz"
    sha256 "cd4abe8652550213b938ef539e1b3c756577030d249c1326ecd213e0b6dcb00f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.63141/kopia-20210416.0.63141-linux-arm64.tar.gz"
    sha256 "e7e9cd54d48c4b3013dc7f44aa298f86d51d53fdf1a23ab479f29507664d6a30"
  end

  def install
    bin.install "kopia"
  end
end
