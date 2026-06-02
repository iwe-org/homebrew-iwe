class Iwe < Formula
  desc "Markdown-based personal knowledge management tool for developers"
  homepage "https://iwe.md"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-universal-apple-darwin.tar.gz"
    sha256 "7fabb7d218f099dc3660a2dd5665eae0f78c01f1750d96bd28f45b2518faab9e"
  end

  on_linux do
    on_intel do
      url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "360ae58b0347221d1d13ed2dc75ce52bbb66ce0d241489727b72889118299fba"
    end

    on_arm do
      url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e708c233b7eac8df9176cec39ba9226051f5d11e1ad4da23d29b6a50f8ead05d"
    end
  end

  def install
    bin.install "iwe"
    bin.install "iwes"
    bin.install "iwec"
  end

  test do
    system "#{bin}/iwe", "--version"
    system "#{bin}/iwes", "--version"
    system "#{bin}/iwec", "--version"
  end
end
