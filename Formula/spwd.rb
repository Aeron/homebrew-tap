class Spwd < Formula
  desc "Command-line utility to generate unique identifiers (UUID, ULID, ObjectId)"
  homepage "https://github.com/Aeron/spwd"
  license "ISC"

  v = "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/Aeron/spwd/releases/download/#{v}/spwd-aarch64-apple-darwin.tar.gz"
      sha256 "84ff5172af48adfe4f7729b34d01389e63c95081ff6ee3b3d2111109804ae0e6"
    end

    on_intel do
      url "https://github.com/Aeron/spwd/releases/download/#{v}/spwd-x86_64-apple-darwin.tar.gz"
      sha256 "6952bfdb4bc23f98bf598f63402e05de24d2137f3c12fc3aa62df7d6eb6501cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Aeron/spwd/releases/download/#{v}/spwd-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e1b1b23c9fa1fa3127f5ad3a338f513c7eceb56a437211988a0971a17e1b88bc"
    end

    on_intel do
      url "https://github.com/Aeron/spwd/releases/download/#{v}/spwd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fc21784e682fbb6cbc193a020472105393096bfc194d77701bc2093793ecfb6a"
    end
  end

  def install
    bin.install "spwd"
  end

  test do
    system bin/"spwd", "--version"
  end
end
