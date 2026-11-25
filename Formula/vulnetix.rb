class Vulnetix < Formula
  desc "Scan dependencies, code, secrets, IaC and containers, and query the Vulnesis VDB"
  homepage "https://github.com/Vulnesis/cli"
  version "4.26.6"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Vulnesis/cli/releases/download/v#{version}/vulnetix-darwin-arm64"
      sha256 "f3f31cb5f38f6e812508057a20bad5d0006ea991e7cb9838973d911b28cd8ca1"
    end
    on_intel do
      url "https://github.com/Vulnesis/cli/releases/download/v#{version}/vulnetix-darwin-amd64"
      sha256 "fc30c5f5a98b42f2a34eaea230de53203fbd45afdb29fc2bc1568a2866b33720"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnesis/cli/releases/download/v#{version}/vulnetix-linux-arm64"
      sha256 "bcdb7a1bf525690f8588da60629de9e76dac2171fd9b319f87ac5d804fa0621f"
    end
    on_intel do
      url "https://github.com/Vulnesis/cli/releases/download/v#{version}/vulnetix-linux-amd64"
      sha256 "75e13a644c3612db2579819716e9706b6753179febab94a04fb047d8ebca64af"
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
