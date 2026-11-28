class Belai < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnesis/belai"
  version "0.176.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnesis/belai/releases/download/v#{version}/belai-bert-guardrails-darwin-arm64"
      sha256 "0906729382b01d1adc509b8dc4e1129dc12201cdb32fbd66f3d99d8a3d33d29f"
    end
    on_intel do
      url "https://github.com/Vulnesis/belai/releases/download/v#{version}/belai-bert-guardrails-darwin-amd64"
      sha256 "5f74b4bbf20b7b09a0ae6332b89ea0dfe5dbccaa5b22cc6a1aabb8725985a35b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnesis/belai/releases/download/v#{version}/belai-bert-guardrails-linux-arm64"
      sha256 "236bd871dee0800b44c588722cffbdecd3ae0a4cc962a0265b8ca5ccc2be4292"
    end
    on_intel do
      url "https://github.com/Vulnesis/belai/releases/download/v#{version}/belai-bert-guardrails-linux-amd64"
      sha256 "220d66f5da524676a5222b063f3abfef61c6869cf79e37d91b26b4ebc64a2dd1"
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
