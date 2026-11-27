class Keleustes < Formula
  desc "Desktop Software Factory that coordinates belai hosts"
  homepage "https://github.com/Vulnesis/keleustes"
  version "0.1.0-rc.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnesis/keleustes/releases/download/v#{version}/keleustes-darwin-arm64"
      sha256 "520e21de1fe428537cf515dc6a71020570fe9df541753c248a5aab3b27c8a271"
    end
    on_intel do
      url "https://github.com/Vulnesis/keleustes/releases/download/v#{version}/keleustes-darwin-amd64"
      sha256 "74cb9e14a010d2e4e43d314ab7a2f4066d7155a06ec96c48a9dee748dfba2b0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnesis/keleustes/releases/download/v#{version}/keleustes-linux-arm64"
      sha256 "24dfbbc436441801832b047feb1baa6d1c5631a6a92eaba926d21196eec56313"
    end
    on_intel do
      url "https://github.com/Vulnesis/keleustes/releases/download/v#{version}/keleustes-linux-amd64"
      sha256 "526147bb789cf3abd8b39fee2c1def9a65e722f877af357ab399682cdfdf35a0"
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
