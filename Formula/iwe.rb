class Iwe < Formula
  desc "Markdown knowledge base you and your AI agent work on together"
  homepage "https://iwe.md"
  version "0.35.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-universal-apple-darwin.tar.gz"
    sha256 "ef6c876f666715cfe3258e998e6bb220d637e0c1b6d81634344ffcdc5474371d"
  end

  on_linux do
    on_intel do
      url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9c42b87ac5826a82ae3efeaa98fde0426d1ba58a4b8efcffe52f10d8b3c9e93e"
    end

    on_arm do
      url "https://github.com/iwe-org/iwe/releases/download/iwe-v#{version}/iwe-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "18ee0254ab4fb1f229a3dff3816957975f7cdd10e0f29d06e9210d45990a4acf"
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
