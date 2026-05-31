class FffMcp < Formula
  desc "Fastest and most accurate file search toolkit for AI agents"
  homepage "https://github.com/dmtrKovalenko/fff"
  license "MIT"

  # NOTE: the version is a dedicated keyword; Homebrew linter will not be happy
  # if we use it, so we use a different class variable instead
  v = "0.8.4"

  on_macos do
    on_arm do
      url "https://github.com/dmtrKovalenko/fff/releases/download/v#{v}/fff-mcp-aarch64-apple-darwin"
      sha256 "70749ff857309fc1182ce235326dfa4fda445b0766ed8b04306b0f86a5deef6e"
    end

    on_intel do
      url "https://github.com/dmtrKovalenko/fff/releases/download/v#{v}/fff-mcp-x86_64-apple-darwin"
      sha256 "8361812e0322ce410131340a5eb58bbe2e7740da58d021510bb705462d22b4f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dmtrKovalenko/fff/releases/download/v#{v}/fff-mcp-aarch64-unknown-linux-gnu"
      sha256 "ccb63751ddcf10469ba32bdf965fb8c17a8777ccc28a24c57d1cee7dda01fab5"
    end

    on_intel do
      url "https://github.com/dmtrKovalenko/fff/releases/download/v#{v}/fff-mcp-x86_64-unknown-linux-gnu"
      sha256 "ce3d6aeef2cfe634a26d39c5f2d5a598dcc8329d86a36b3cc44d257ab6cda153"
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
