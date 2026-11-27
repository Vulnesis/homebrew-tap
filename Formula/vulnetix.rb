class Vulnetix < Formula
  desc "Scan dependencies, code, secrets, IaC and containers, and query the Vulnesis VDB"
  homepage "https://github.com/Vulnesis/cli"
  version "4.26.10"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Vulnesis/cli/releases/download/v#{version}/vulnetix-darwin-arm64"
      sha256 "e63c3534660dbcbdffa081c4ddbce24a8894c63bb4dff44e88dcbe4ae93af715"
    end
    on_intel do
      url "https://github.com/Vulnesis/cli/releases/download/v#{version}/vulnetix-darwin-amd64"
      sha256 "98fb264b2a8086d0dcca68836e56bf3106ff835c19b10776b32f3ef0d90b94b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnesis/cli/releases/download/v#{version}/vulnetix-linux-arm64"
      sha256 "0becdd2966b5bffaf6291251df85028789f21ee1dc35f4b332e6f5c564d5dec5"
    end
    on_intel do
      url "https://github.com/Vulnesis/cli/releases/download/v#{version}/vulnetix-linux-amd64"
      sha256 "3b84d5de2e18bfe2d1b9a4e8ea247d0cb74583c38a180903ecc57d9286da35d4"
    end
  end

  def install
    binary = Dir["vulnetix*"].first
    bin.install binary => "vulnetix"
  end

  test do
    assert_match "Vulnesis CLI", shell_output("#{bin}/vulnetix version 2>&1", 0)
  end
end
