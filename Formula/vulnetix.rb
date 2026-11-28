class Vulnetix < Formula
  desc "Scan dependencies, code, secrets, IaC and containers, and query the Vulnesis VDB"
  homepage "https://github.com/Vulnesis/cli"
  version "4.27.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Vulnesis/cli/releases/download/v#{version}/vulnetix-darwin-arm64"
      sha256 "1898c234f41a90742bf55dac75e8de2084c72c3e572200ada0bfc2c0a8026e74"
    end
    on_intel do
      url "https://github.com/Vulnesis/cli/releases/download/v#{version}/vulnetix-darwin-amd64"
      sha256 "f9a7f296be248d53ca16397a4e5bf890054e5a013fc3d37578d1020915054505"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnesis/cli/releases/download/v#{version}/vulnetix-linux-arm64"
      sha256 "e1a203a74bfaa285e024957d75be250fc456f74bb3fb693951f57986aa3ec33d"
    end
    on_intel do
      url "https://github.com/Vulnesis/cli/releases/download/v#{version}/vulnetix-linux-amd64"
      sha256 "6ba10fa564a024b3ddde07f7e22b22ff518db2a5106403a205580558e35bb82e"
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
