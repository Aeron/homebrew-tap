class FffMcp < Formula
  desc "Fastest and most accurate file search toolkit for AI agents"
  homepage "https://github.com/dmtrKovalenko/fff.nvim"
  license "MIT"

  v = "0.7.1"

  on_macos do
    on_arm do
      url "https://github.com/dmtrKovalenko/fff.nvim/releases/download/v#{v}/fff-mcp-aarch64-apple-darwin"
      sha256 "b01a1174c31286c354a9e291760d1fe832c970069fd4403a183845a2b1ab8f85"
    end

    on_intel do
      url "https://github.com/dmtrKovalenko/fff.nvim/releases/download/v#{v}/fff-mcp-x86_64-apple-darwin"
      sha256 "5765ae9c96add1d4a6c4b51b43a8acc896d8af42e9b7dd966d8814053d53df82"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dmtrKovalenko/fff.nvim/releases/download/v#{v}/fff-mcp-aarch64-unknown-linux-gnu"
      sha256 "3d105f3b4be81e6a2964bb34c091873a40cfe7686fffd216cf9ee4d547e18ff1"
    end

    on_intel do
      url "https://github.com/dmtrKovalenko/fff.nvim/releases/download/v#{v}/fff-mcp-x86_64-unknown-linux-gnu"
      sha256 "668867c61b421d4a59a04bc64e7c99ab9b3834a5126696832da79cee24a3d9ac"
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
