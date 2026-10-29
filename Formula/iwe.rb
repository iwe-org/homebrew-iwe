class Iwe < Formula
  desc "Markdown knowledge base you and your AI agent work on together"
  homepage "https://iwe.md"
  version "0.29.3"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-universal-apple-darwin.tar.gz"
    sha256 "7efa6be68deb5cc6324884042c49930b525387bc98875338b1f9fd06852ceea1"
  end

  on_linux do
    on_intel do
      url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c40ae0ae34ee818862a2d36ee992f2cb5415add6d110a4b3afc3cb1f68a78cc9"
    end

    on_arm do
      url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b62e32dde1e80cf38c3f0c5180e2511eb0d7eff31bdd6f5f7c7ae03932bfef64"
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
