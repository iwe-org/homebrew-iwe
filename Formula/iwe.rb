class Iwe < Formula
  desc "Markdown-based personal knowledge management tool for developers"
  homepage "https://iwe.md"
  version "0.0.64"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-universal-apple-darwin.tar.gz"
    sha256 "bec86d2036aba773b41bf87e30c92ba70655c2b3edbdea7c4a079eea7ac02888"
  end

  on_linux do
    on_intel do
      url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9703e9da3e0446caa247622808ba7d24504ca659bdf4f1a49df3736e0d38f166"
    end

    on_arm do
      url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e08d81762fd655042eb571e1fa0dcff93f6f1c9e7b47bf239cdcdfb61aa10f6f"
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
