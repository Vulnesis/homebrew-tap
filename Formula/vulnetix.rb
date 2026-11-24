class Vulnetix < Formula
  desc "Scan dependencies, code, secrets, IaC and containers, and query the Vulnesis VDB"
  homepage "https://github.com/Vulnesis/cli"
  version "4.26.4"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Vulnesis/cli/releases/download/v#{version}/vulnetix-darwin-arm64"
      sha256 "ebca4ff1749808388872846211a3e3c395b55b7adbdb574d6e2fa531f01fd287"
    end
    on_intel do
      url "https://github.com/Vulnesis/cli/releases/download/v#{version}/vulnetix-darwin-amd64"
      sha256 "0ebc9f33df046adf4dae9b56fe1043099682f0b25f9b62fb061ddf831b181d6e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnesis/cli/releases/download/v#{version}/vulnetix-linux-arm64"
      sha256 "9850af45cda09f6eeacd0b12a4d5ff8bf405f4376fef086053699f45336ea3e3"
    end
    on_intel do
      url "https://github.com/Vulnesis/cli/releases/download/v#{version}/vulnetix-linux-amd64"
      sha256 "f1f770b22c8078f6033468b35775b7fd142b65b48ba46012f12612101171932a"
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
