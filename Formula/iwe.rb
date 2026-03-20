class Iwe < Formula
  desc "Markdown-based personal knowledge management tool for developers"
  homepage "https://iwe.md"
  version "0.0.63"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-universal-apple-darwin.tar.gz"
    sha256 "7942437f1bd500a0307260d4fa6ef08a39e5235c02bd3d6460eba506acce160f"
  end

  on_linux do
    on_intel do
      url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bb6f55f3844681e970fd2ce3217a75a769bbb1498c6b3ec127a78b58b742e39a"
    end

    on_arm do
      url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5033f1de5869c40f66aae1482c503c8861048ec9e01f51cd0b9e3eaf5961db17"
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
