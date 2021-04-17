# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210416.0.224232"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.224232/kopia-20210416.0.224232-macOS-x64.tar.gz"
    sha256 "5df05caef477e071d8048eee1897cc5e6f83473e5618a100cd2769cc43233b92"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.224232/kopia-20210416.0.224232-macOS-arm64.tar.gz"
    sha256 "7f7b783a853a6f603b18734c4911e43fc304e885cdd85ca89ad51522dd071252"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.224232/kopia-20210416.0.224232-linux-x64.tar.gz"
    sha256 "5bb3cc1d2d4c12ece092661fd8fdf4f36c37d2d5f71884e91e73aa22a0adc7a8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.224232/kopia-20210416.0.224232-linux-arm.tar.gz"
    sha256 "7be31fb5043bab4c5e2a4cd810bb46d6ea18c4ca40ed9561bbf4600bfd5c8e8a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.224232/kopia-20210416.0.224232-linux-arm64.tar.gz"
    sha256 "6759944f80faf424cec55cf6d343a2f15ff76bf45e5bf4145b65f940679fe67f"
  end

  def install
    bin.install "kopia"
  end
end
