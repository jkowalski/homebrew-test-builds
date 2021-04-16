# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210416.0.62725"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.62725/kopia-20210416.0.62725-macOS-x64.tar.gz"
    sha256 "11ae775358641ee2fdf7d81d6885cc93eb06d5e2689b988d47d1708028bbe9d0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.62725/kopia-20210416.0.62725-macOS-arm64.tar.gz"
    sha256 "dec864fc17aa8ce4d41ea528835f58852bc91546c1d94b0110216003769c917d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.62725/kopia-20210416.0.62725-linux-x64.tar.gz"
    sha256 "72faef3708582e017c3698071e2475efe201d21c952f26949220693218a4b049"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.62725/kopia-20210416.0.62725-linux-arm.tar.gz"
    sha256 "dc44b140b692275454e5ae21e2136575f41ab7ab32110fef850bbd8169b86628"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.62725/kopia-20210416.0.62725-linux-arm64.tar.gz"
    sha256 "deb5f8e2435c67234f3961b3326b27ef5b87ee2ba9ec4b68b43f6d03e2a1f773"
  end

  def install
    bin.install "kopia"
  end
end
