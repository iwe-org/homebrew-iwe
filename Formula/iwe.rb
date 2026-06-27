class Iwe < Formula
  desc "Markdown-based personal knowledge management tool for developers"
  homepage "https://iwe.md"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-universal-apple-darwin.tar.gz"
    sha256 "0650e3ddc6e0bd61781508942a976d88cda8397dc7c01831a3d14ee2ec531cac"
  end

  on_linux do
    on_intel do
      url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2a5d763c82383a0c378e847812aa9ac51af088c10e5de80fdd136f533c83bb5f"
    end

    on_arm do
      url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "11809c808a3deba05b13d46e984096e6978c6284ca0b9c0fd16c976505d896b7"
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
