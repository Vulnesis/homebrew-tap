class Belai < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnesis/belai"
  version "0.175.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnesis/belai/releases/download/v#{version}/belai-bert-guardrails-darwin-arm64"
      sha256 "3504aace933fd1a106c8b7d77977186d0f503ed31446e488456aadcb7c96040d"
    end
    on_intel do
      url "https://github.com/Vulnesis/belai/releases/download/v#{version}/belai-bert-guardrails-darwin-amd64"
      sha256 "b73da309b1ff82a6599e6d12e50234a06623a985aaf410bff0390c8b52d63af3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnesis/belai/releases/download/v#{version}/belai-bert-guardrails-linux-arm64"
      sha256 "38a14c7fa45afe5c0663d07e86ef76fbff0d3c0a41cde8012b5a0854a38eb762"
    end
    on_intel do
      url "https://github.com/Vulnesis/belai/releases/download/v#{version}/belai-bert-guardrails-linux-amd64"
      sha256 "a70454612b627979ecbc372e03092cc26dadb9f2bd57f1f0970815e2fc2763cf"
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
