class Belai < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnesis/belai"
  version "0.175.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnesis/belai/releases/download/v#{version}/belai-bert-guardrails-darwin-arm64"
      sha256 "5ef211fbce0967d00cd400729974fdefa39ed191cee57d2d8b0bfab99bcd36fc"
    end
    on_intel do
      url "https://github.com/Vulnesis/belai/releases/download/v#{version}/belai-bert-guardrails-darwin-amd64"
      sha256 "53bd2597fdffcf1004563865ad5872716953f5ea1334ccafab345f3059764fa7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnesis/belai/releases/download/v#{version}/belai-bert-guardrails-linux-arm64"
      sha256 "33492efbdcf36d3accf47a421fd522b600402eeb57eec4c52b02be2252582161"
    end
    on_intel do
      url "https://github.com/Vulnesis/belai/releases/download/v#{version}/belai-bert-guardrails-linux-amd64"
      sha256 "1ea353c8a5c06ed8f4ce0c530b240f2273834e98523140ecffe453fee0186759"
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
