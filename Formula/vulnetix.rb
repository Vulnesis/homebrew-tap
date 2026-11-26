class Vulnetix < Formula
  desc "Scan dependencies, code, secrets, IaC and containers, and query the Vulnesis VDB"
  homepage "https://github.com/Vulnesis/cli"
  version "4.26.8"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Vulnesis/cli/releases/download/v#{version}/vulnetix-darwin-arm64"
      sha256 "1a6edca08bd6c6debd6c65e2bf64a6fc341fdc1dde6121d0a796f3e132edc834"
    end
    on_intel do
      url "https://github.com/Vulnesis/cli/releases/download/v#{version}/vulnetix-darwin-amd64"
      sha256 "e0944070ee5a32a449fc94ecc8572912e313d33630ed42e25507af5f26447f73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnesis/cli/releases/download/v#{version}/vulnetix-linux-arm64"
      sha256 "ade8490cb13326bafaada7c13d6fe011da02ba4682c82e38fd39574d33e70e90"
    end
    on_intel do
      url "https://github.com/Vulnesis/cli/releases/download/v#{version}/vulnetix-linux-amd64"
      sha256 "3cd466c15656b693ab8d3d5bb9bfe1fc06be757748eca03c7ced0e3fb955ea49"
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
