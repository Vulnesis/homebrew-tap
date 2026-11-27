class Belai < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnesis/belai"
  version "0.176.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnesis/belai/releases/download/v#{version}/belai-bert-guardrails-darwin-arm64"
      sha256 "78c7c2eb082bf43f8aa9a8083a91dba7bc085e478104478806225121545bf22e"
    end
    on_intel do
      url "https://github.com/Vulnesis/belai/releases/download/v#{version}/belai-bert-guardrails-darwin-amd64"
      sha256 "e6493ba39b9162e5242c95919f2fc72aceb1ce5cf9cb5e595c56f5df27cf2504"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnesis/belai/releases/download/v#{version}/belai-bert-guardrails-linux-arm64"
      sha256 "01524fc56add92b24bad31177114b9462a2d2d7edfeece424eb023b82d79b633"
    end
    on_intel do
      url "https://github.com/Vulnesis/belai/releases/download/v#{version}/belai-bert-guardrails-linux-amd64"
      sha256 "d9e45fe9816576278d87c5e52b2d2afe9c6235e0052a68afa74e7475d893cd39"
    end
  end

  def install
    binary = Dir["belai*"].first
    bin.install binary => "belai"
  end

  test do
    refute_empty shell_output("#{bin}/belai --version 2>&1", 0)
  end
end
