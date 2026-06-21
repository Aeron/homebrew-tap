class Spwd < Formula
  desc "Command-line utility to generate unique identifiers (UUID, ULID, ObjectId)"
  homepage "https://github.com/Aeron/spwd"
  license "ISC"

  # NOTE: the version is a dedicated keyword; Homebrew linter will not be happy
  # if we use it, so we use a different class variable instead
  v = "1.0.1"

  on_macos do
    on_arm do
      url "https://github.com/Aeron/spwd/releases/download/#{v}/spwd-aarch64-apple-darwin.tar.gz"
      sha256 "7c3a4c6da8ef1fa7dfdbc9585b39b7095ae7ddd25fff2a7eff789e26481108d4"
    end

    on_intel do
      url "https://github.com/Aeron/spwd/releases/download/#{v}/spwd-x86_64-apple-darwin.tar.gz"
      sha256 "a6f85657f3772fe00a9d43df595d5dd64d030ea28713c3b5970c8cf1de6d7a24"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Aeron/spwd/releases/download/#{v}/spwd-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e0e712fe8f1190ad4e5203815b31947ac465e3f68c7662bddfff768e53a5ac0a"
    end

    on_intel do
      url "https://github.com/Aeron/spwd/releases/download/#{v}/spwd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fd48cd9c11f7d69389cc1ee039087fdf674625ac7020d70dec13bddf89caff33"
    end
  end

  def install
    bin.install "spwd"
  end

  test do
    system bin/"spwd", "--version"
  end
end
