# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210416.0.72250"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.72250/kopia-20210416.0.72250-macOS-x64.tar.gz"
    sha256 "8410c562fd47203e04f8525bb48b5b1b7ff7da1c0eb6e5248ba10c7a557ba15c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.72250/kopia-20210416.0.72250-macOS-arm64.tar.gz"
    sha256 "874619bc027f720163348a4e09a2b89c5ac8dd80e57bb66afb7e95f9368136ea"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.72250/kopia-20210416.0.72250-linux-x64.tar.gz"
    sha256 "70dfc7a57e3951d1808565203e09c96ce605bab237151b3a0acbc79159d035b2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.72250/kopia-20210416.0.72250-linux-arm.tar.gz"
    sha256 "2fdfb74f29c1b95dc6cd512ca5a0e5ec30e6b0cf6a44239603776c8b8374ee2d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.72250/kopia-20210416.0.72250-linux-arm64.tar.gz"
    sha256 "68427785b11a14d7fe2973e69ea21232c0463d7a51ca4bdfa733f12eb5d4071c"
  end

  def install
    bin.install "kopia"
  end
end
