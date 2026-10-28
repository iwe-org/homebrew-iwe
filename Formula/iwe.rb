class Iwe < Formula
  desc "Markdown knowledge base you and your AI agent work on together"
  homepage "https://iwe.md"
  version "0.29.2"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-universal-apple-darwin.tar.gz"
    sha256 "ced4f3b7dc359bb73848fb416ad87b4c0424d9948847d35478eafcc1c5ccafbc"
  end

  on_linux do
    on_intel do
      url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ea8763e122d646c3c1c3e961a5de531eae40140fdbe944e99575fec756b55c08"
    end

    on_arm do
      url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "298d54406768c54bee136109d9bab8417d87e727cc382e98ee7eae9b5affa248"
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
