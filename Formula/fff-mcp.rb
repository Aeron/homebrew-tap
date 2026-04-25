class FffMcp < Formula
  desc "Fastest and most accurate file search toolkit for AI agents"
  homepage "https://github.com/dmtrKovalenko/fff.nvim"
  license "MIT"

  v = "0.6.4"

  on_macos do
    on_arm do
      url "https://github.com/dmtrKovalenko/fff.nvim/releases/download/v#{v}/fff-mcp-aarch64-apple-darwin"
      sha256 "e9eb0cec5856d78b30382c93e54bfbfe68547bba7a5af874e975aa59c4901252"
    end

    on_intel do
      url "https://github.com/dmtrKovalenko/fff.nvim/releases/download/v#{v}/fff-mcp-x86_64-apple-darwin"
      sha256 "616699f3b131cb27cc71164813a972e568c3ae4d9df6646339cc8f449011dde9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dmtrKovalenko/fff.nvim/releases/download/v#{v}/fff-mcp-aarch64-unknown-linux-gnu"
      sha256 "5be882c099b9b28baf3b31bbb2c0bbd722b604a34640d683f3aaf1c890e33313"
    end

    on_intel do
      url "https://github.com/dmtrKovalenko/fff.nvim/releases/download/v#{v}/fff-mcp-x86_64-unknown-linux-gnu"
      sha256 "eee3c355643a97ad77e0e9548101afb96cd69b4c751979933961eb2e05fdcede"
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
