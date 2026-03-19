class Iwe < Formula
  desc "Markdown-based personal knowledge management tool for developers"
  homepage "https://iwe.md"
  version "0.0.62"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-universal-apple-darwin.tar.gz"
    sha256 "6b637cab1e0e54da104d0179be67b50e12d1bad5b7bee22cda308211e069bc68"
  end

  on_linux do
    on_intel do
      url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eae3edb54233641080f37e3f2531dd7b6ce516158efe77598f503c9aecf95cbb"
    end

    on_arm do
      url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0b7b4fe2227b2b15e33a3342ff50ccb8670c0ec861bf3999b9386826621ba900"
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
