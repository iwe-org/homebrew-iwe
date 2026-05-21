class Iwe < Formula
  desc "Markdown-based personal knowledge management tool for developers"
  homepage "https://iwe.md"
  version "0.1.7"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-universal-apple-darwin.tar.gz"
    sha256 "0164b0aecf200f963a8a880db26248166c3c93ba6373718de52747c75958ef8e"
  end

  on_linux do
    on_intel do
      url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "abd0fc2c1c0cc6087f910eccfbd35e927e13bf6825a1e6a335d150249c95266d"
    end

    on_arm do
      url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aa525728a47aa1d9708d3e053762e64115558fa6202971f51f74db18c2933aa5"
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
