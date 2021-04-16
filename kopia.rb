# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210416.0.63621"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.63621/kopia-20210416.0.63621-macOS-x64.tar.gz"
    sha256 "f09eb33661915d7dd274d2ef2e0924eeecb3b524e37aa4ffad2a2437ce0a2f3e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.63621/kopia-20210416.0.63621-macOS-arm64.tar.gz"
    sha256 "f62b9a5a4b2432da8117d5f891d8ff365bce6d5f207fcf41acda7d989612b481"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.63621/kopia-20210416.0.63621-linux-x64.tar.gz"
    sha256 "273553e03abc0eea78ca87fa5ec941ca26211d2e29ac7916f142619cf3920f66"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.63621/kopia-20210416.0.63621-linux-arm.tar.gz"
    sha256 "67185f7b90357d5e78f544d2fad4e017634b72c04135a5d0c6b3fd3d3c86d042"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.63621/kopia-20210416.0.63621-linux-arm64.tar.gz"
    sha256 "4f05e6a03974a8c213782208b44a1f9708699591f5ff37889874fe34706c2cd9"
  end

  def install
    bin.install "kopia"
  end
end
