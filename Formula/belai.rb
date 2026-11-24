class Belai < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnesis/belai"
  version "0.175.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnesis/belai/releases/download/v#{version}/belai-bert-guardrails-darwin-arm64"
      sha256 "d44c91d549d4623829bdea02dfa80e118e2c4deddd7454dbacff129152cc8040"
    end
    on_intel do
      url "https://github.com/Vulnesis/belai/releases/download/v#{version}/belai-bert-guardrails-darwin-amd64"
      sha256 "10fcf69e72853d7ef1a6655e9105f001aa895806818bb17cf5b4e465aca0a50b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnesis/belai/releases/download/v#{version}/belai-bert-guardrails-linux-arm64"
      sha256 "0e109f156aa85caecc4200512c82f83ac03117721997eb940ade2886dcf0677d"
    end
    on_intel do
      url "https://github.com/Vulnesis/belai/releases/download/v#{version}/belai-bert-guardrails-linux-amd64"
      sha256 "1473c7c6b3f2c19a94a21477f9c34563a56d0f137dd698a8af5c9ec2b444f8b6"
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
