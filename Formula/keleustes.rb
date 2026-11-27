class Keleustes < Formula
  desc "Desktop Software Factory that coordinates belai hosts"
  homepage "https://github.com/Vulnesis/keleustes"
  version "0.1.0-rc.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnesis/keleustes/releases/download/v#{version}/keleustes-darwin-arm64"
      sha256 "1015553872317f96bcc51c893a72a8fd487365e9782c9e48d91f99c72e73fe9e"
    end
    on_intel do
      url "https://github.com/Vulnesis/keleustes/releases/download/v#{version}/keleustes-darwin-amd64"
      sha256 "b2cf57d544a42eb8695026835843de9537093de5f160a37230f3c62a038f6346"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnesis/keleustes/releases/download/v#{version}/keleustes-linux-arm64"
      sha256 "4429d55551ad0c7357d7007a1e779d59a922abcfa0b1a6e0d77c01c4af3cebce"
    end
    on_intel do
      url "https://github.com/Vulnesis/keleustes/releases/download/v#{version}/keleustes-linux-amd64"
      sha256 "a02a1d8927cd06c57c2de9c7da58f42983c002491003a81d382a12a27194ef70"
    end
  end

  def install
    binary = Dir["keleustes*"].first
    bin.install binary => "keleustes"
  end

  test do
    refute_empty shell_output("#{bin}/keleustes --version 2>&1", 0)
  end
end
