<p align="center">
  <img src="strix.svg" alt="Strix, the Vulnesis mascot" width="110">
</p>

# Vulnesis Homebrew tap

[![Ask DeepWiki](https://deepwiki.com/badge.svg)](https://deepwiki.com/Vulnesis/homebrew-tap)

Homebrew formulae for Vulnesis tools.

## Installation

```bash
brew tap vulnetix/tap
brew install vulnetix      # CLI
brew install belai         # Belai, the open source coding harness
brew install vvd-search    # Interactive TUI
```

Or without tapping first:

```bash
brew install vulnetix/tap/vulnetix
brew install vulnetix/tap/belai
```

## Available formulae

| Formula | Description |
|---------|-------------|
| vulnetix | Scan dependencies, code, secrets, IaC and containers, and query the Vulnesis VDB |
| belai | Role-managed, injection-safe LLM coding harness |
| crit-validate | Validate CVEListv5 records with embedded CRIT data |
| vvd-search | Interactive TUI for exploring the Vulnesis Vulnerability Database |

## License

This repository is licensed under the [GNU Affero General Public License v3.0](LICENSE). Each formula's `license` field states the licence of the software it installs.
<!-- ci-touch: 2026-08-24T13:23:20Z -->