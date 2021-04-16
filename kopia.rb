# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210416.0.81713"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.81713/kopia-20210416.0.81713-macOS-x64.tar.gz"
    sha256 "1c3bc08afa1ce324d246a598fda00bb949cb20dd8238b9da7e1bea86928af27f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.81713/kopia-20210416.0.81713-macOS-arm64.tar.gz"
    sha256 "d2acc2568053925cc26815c4977d0542b08ca915f31f3c1ea927894f554134b7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.81713/kopia-20210416.0.81713-linux-x64.tar.gz"
    sha256 "aa8b1a30c5ee134e9ddd5f5aa2f74747276d183e3145f26d058773969bd926d2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.81713/kopia-20210416.0.81713-linux-arm.tar.gz"
    sha256 "634f103f59a4fea80d7ad2d5b4ffc064de51d86afe32f597a5eeec7d76eb32b0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.81713/kopia-20210416.0.81713-linux-arm64.tar.gz"
    sha256 "318f7c6fe6757880e58d1958168d88966f27e33e72a2330e99ecbd9e7b755f8a"
  end

  def install
    bin.install "kopia"
  end
end
