class Iwe < Formula
  desc "Markdown knowledge base you and your AI agent work on together"
  homepage "https://iwe.md"
  version "0.31.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-universal-apple-darwin.tar.gz"
    sha256 "456b622406b644fc1bf127ddb14b583517881b57b834d808668ceb9df81e1b07"
  end

  on_linux do
    on_intel do
      url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9106c52ff46690436f9e91ea7de7935a89c2e693e3ee0f8462a969e4ee6f83be"
    end

    on_arm do
      url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4e61e1f9c0f59ad859abb59170cc88d39290b63dd0ea081484fd11f6f47e9301"
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
