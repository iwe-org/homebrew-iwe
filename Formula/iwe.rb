class Iwe < Formula
  desc "Markdown-based personal knowledge management tool for developers"
  homepage "https://iwe.md"
  version "0.0.61"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-universal-apple-darwin.tar.gz"
    sha256 "4363efe69f6855d9b1008b582aebf730fb1319d9c78df5073fe86dfcf685f45e"
  end

  on_linux do
    on_intel do
      url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9357796e6e42d8e4a16c7aece552ecdb5f8145915ec423478bd060b609b84509"
    end

    on_arm do
      url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "64745c9197798f8b18b8c6906deee8dade55a6f45decac6f53045b2b327638be"
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
