class Iwe < Formula
  desc "Markdown knowledge base you and your AI agent work on together"
  homepage "https://iwe.md"
  version "0.29.1"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-universal-apple-darwin.tar.gz"
    sha256 "5b098c4547c0e0c3f37a835e27101b4fe2cf3f7b615988ca513ccfa555a4208b"
  end

  on_linux do
    on_intel do
      url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "40e723d313eee18c8780e7dd8b9aeb127637b74c9e418cd66e84ec7f0edca3f7"
    end

    on_arm do
      url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b10ddb7b1112584b79d59f3ab3300397493324a333376a154bac550f7272dfd8"
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
