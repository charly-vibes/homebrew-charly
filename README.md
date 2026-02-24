# homebrew-charly

Homebrew tap for [charly-vibes](https://github.com/charly-vibes) tools.

## Setup

```bash
brew tap charly-vibes/charly
```

## Tools

| Name | Kind | Description |
|------|------|-------------|
| `wai` | formula | Workflow manager for AI-driven development |
| `fabbro` | formula | Local-first code review annotation tool |
| `fotos-mcp` | formula | MCP server for the Fotos screenshot tool |
| `fotos` | cask | AI-powered screenshot capture and analysis app |

## Install

```bash
# CLI tools (formula)
brew install wai
brew install fabbro
brew install fotos-mcp

# Desktop app (cask)
brew install --cask fotos
```

## Update

```bash
brew update && brew upgrade
```

---

Formulas and casks are auto-updated on each release via [GoReleaser](https://goreleaser.com) and GitHub Actions.
