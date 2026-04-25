# Aeron’s Homebrew Tap

A personal [Homebrew](https://brew.sh) tap for things I build or other folks have no
formulae for.

## Formulae

- [`fff-mcp`](https://github.com/dmtrKovalenko/fff.nvim) — the fastest and the most accurate file search toolkit for AI agents
- [`spwd`](https://github.com/Aeron/spwd) — a command-line utility to generate unique identifiers (UUID, ULID, ObjectId)

## Usage

Install a formula directly:

```sh
brew install aeron/tap/<formula>
```

Or tap first, then install by name:

```sh
brew tap aeron/tap
brew install <formula>
```

Or via a `Brewfile`:

```ruby
tap "aeron/tap"
brew "<formula>"
```
