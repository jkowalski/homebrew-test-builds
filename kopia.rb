# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210416.0.73546"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.73546/kopia-20210416.0.73546-macOS-x64.tar.gz"
    sha256 "3f2706e49e85b6b04191e18ef908e9242b0ac9cad3376e266436457ddeb06678"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.73546/kopia-20210416.0.73546-macOS-arm64.tar.gz"
    sha256 "11500b6888fa38a0009f999d39f27ec12138e14f0cba15183229abc504f4126a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.73546/kopia-20210416.0.73546-linux-x64.tar.gz"
    sha256 "21b37154288720e80a3f568b2237b028fb5de6f28b49aa5d244a3dd06db04c3a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.73546/kopia-20210416.0.73546-linux-arm.tar.gz"
    sha256 "0648afb973767ce28fd101ac003be297dff7007f27da19fe37bfc3385f16d76a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.73546/kopia-20210416.0.73546-linux-arm64.tar.gz"
    sha256 "b63a45748523bdf1e56b1466adb4a2cd5b04bb8bbeb3635a9458316b93e3d854"
  end

  def install
    bin.install "kopia"
  end
end
