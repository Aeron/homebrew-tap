class FffMcp < Formula
  desc "Fastest and most accurate file search toolkit for AI agents"
  homepage "https://github.com/dmtrKovalenko/fff.nvim"
  license "MIT"

  v = "0.8.1"

  on_macos do
    on_arm do
      url "https://github.com/dmtrKovalenko/fff.nvim/releases/download/v#{v}/fff-mcp-aarch64-apple-darwin"
      sha256 "d6e8f368da148584533ad1021496d108db1b9ca1972a80656f1a3f8b93e4085d"
    end

    on_intel do
      url "https://github.com/dmtrKovalenko/fff.nvim/releases/download/v#{v}/fff-mcp-x86_64-apple-darwin"
      sha256 "9e97c700da5eb3488cfe8912a598b235c8ea84b4cf1d8425b432d5b9776ea979"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dmtrKovalenko/fff.nvim/releases/download/v#{v}/fff-mcp-aarch64-unknown-linux-gnu"
      sha256 "225890157ddd27d3dd55772eb5bd14a98bf2a53082cc6b2d7923493fc31fffac"
    end

    on_intel do
      url "https://github.com/dmtrKovalenko/fff.nvim/releases/download/v#{v}/fff-mcp-x86_64-unknown-linux-gnu"
      sha256 "7e1085aa6c23d2ea38ef1db5f6c01e0290b5c3049413e273e735ad9c498fe2a8"
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
