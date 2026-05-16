class Iwe < Formula
  desc "Markdown-based personal knowledge management tool for developers"
  homepage "https://iwe.md"
  version "0.1.5"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-universal-apple-darwin.tar.gz"
    sha256 "c0b86476ba257a8f4bc61700627f0a05b55d7aca968a5e32891b17980586e1fb"
  end

  on_linux do
    on_intel do
      url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "289563a3dce7d11aece0299d17169273cb87dd47d5799ec3426af3f8b6902d85"
    end

    on_arm do
      url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "985e7dd891ecce7a8cf763940220ae04217655398156d0637b44efd6fefb21d6"
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
