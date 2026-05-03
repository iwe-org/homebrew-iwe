class Iwe < Formula
  desc "Markdown-based personal knowledge management tool for developers"
  homepage "https://iwe.md"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-universal-apple-darwin.tar.gz"
    sha256 "ea3129dcd68c370c89eb1bd890dadbf0bb3f6e7d48925f7e5b1d998abd142604"
  end

  on_linux do
    on_intel do
      url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8b015d6f670145e5ba239394a858e3c38d2948400a34780fa843a85856fe6e7f"
    end

    on_arm do
      url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6051d73a069b5b3ff40ed3d073a05bd20526fd7296eddc572c5891f659f27d8c"
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
