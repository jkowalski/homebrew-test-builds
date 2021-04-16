# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210416.0.75008"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.75008/kopia-20210416.0.75008-macOS-x64.tar.gz"
    sha256 "035b88509eb01d144e0fe68e50074b0f9d359152ef5ae985d9023e83a151a15a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.75008/kopia-20210416.0.75008-macOS-arm64.tar.gz"
    sha256 "ae93248cd6e5d00e82834dd3fd8b5ae5b2e4e223d72452e65565f6a9282e3ad6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.75008/kopia-20210416.0.75008-linux-x64.tar.gz"
    sha256 "cb0874d23364c13a474a3a06a3d8fef781f0e9623f1028bba9458cef42d7470d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.75008/kopia-20210416.0.75008-linux-arm.tar.gz"
    sha256 "a829252fd8a94048ff489e4f3773b98e784a649caa21fb72c2b514eb7b0991b8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jkowalski/kopia-test-builds/releases/download/v20210416.0.75008/kopia-20210416.0.75008-linux-arm64.tar.gz"
    sha256 "613c2cad2ff470b9a437946eeb44ebedb3b1407836a762c2fd3ea967bc1edfd6"
  end

  def install
    bin.install "kopia"
  end
end
