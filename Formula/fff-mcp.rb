class FffMcp < Formula
  desc "Fastest and most accurate file search toolkit for AI agents"
  homepage "https://github.com/dmtrKovalenko/fff"
  license "MIT"

  deprecate! date: "2026-06-21", because: "it has been superseded by dmtrKovalenko/fff/fff-mcp"

  # NOTE: the version is a dedicated keyword; Homebrew linter will not be happy
  # if we use it, so we use a different class variable instead
  v = "0.9.5"

  on_macos do
    on_arm do
      url "https://github.com/dmtrKovalenko/fff/releases/download/v#{v}/fff-mcp-aarch64-apple-darwin"
      sha256 "5e46ffd613a71cb460fb674a0756070658e806b10f6151f8ffd006ddddd8dccf"
    end

    on_intel do
      url "https://github.com/dmtrKovalenko/fff/releases/download/v#{v}/fff-mcp-x86_64-apple-darwin"
      sha256 "66b717a9dd0a058972042f6a20bbf51274df1b8cdb4b6c5586c0d8a7b0fc0d3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dmtrKovalenko/fff/releases/download/v#{v}/fff-mcp-aarch64-unknown-linux-gnu"
      sha256 "3f7b5306c79f099f8c18720a5f88e1c503ebaa11553758a230270727adf5bd13"
    end

    on_intel do
      url "https://github.com/dmtrKovalenko/fff/releases/download/v#{v}/fff-mcp-x86_64-unknown-linux-gnu"
      sha256 "0bceb87752cb38540dbad585cd08fab3d26a315576bbf5af8b0d3c9c9ddf068b"
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "fff-mcp-aarch64-apple-darwin" => "fff-mcp"
      elsif Hardware::CPU.intel?
        bin.install "fff-mcp-x86_64-apple-darwin" => "fff-mcp"
      end
    elsif OS.linux?
      if Hardware::CPU.arm?
        bin.install "fff-mcp-aarch64-unknown-linux-gnu" => "fff-mcp"
      elsif Hardware::CPU.intel?
        bin.install "fff-mcp-x86_64-unknown-linux-gnu" => "fff-mcp"
      end
    end
  end

  test do
    system bin/"fff-mcp", "--version"
  end
end
