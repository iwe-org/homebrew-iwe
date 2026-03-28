class Iwe < Formula
  desc "Markdown-based personal knowledge management tool for developers"
  homepage "https://iwe.md"
  version "0.0.65"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-universal-apple-darwin.tar.gz"
    sha256 "1ba9a8692eb27cf9b657bd60b57752356bc25314de5f1c18d3e3901a947abb08"
  end

  on_linux do
    on_intel do
      url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "970e244f36ab9f74455c9d78eeeca8fa8530825294d62281d8c9c450e5dc8dbd"
    end

    on_arm do
      url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "38f3b458d90972b4f2c95bd038a30f4f2699e684c896c418f95a31248749d8aa"
    end
  end

  def install
    bin.install "iwe"
    bin.install "iwes"
  end

  test do
    system "#{bin}/iwe", "--version"
    system "#{bin}/iwes", "--version"
  end
end
