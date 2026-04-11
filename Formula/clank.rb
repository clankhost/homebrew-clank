class Clank < Formula
  desc "CLI for the Clank deployment platform"
  homepage "https://clank.host"
  version "0.3.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.11/clank_darwin_arm64.tar.gz"
      sha256 "e9e1d2d46cc3fb2d5f9bd56281b92904a31387964d5500138d128622270ac5b6"
    end
    on_intel do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.11/clank_darwin_amd64.tar.gz"
      sha256 "cffcb468bd6082a54215155cbd49c2bbba2f916a8309c9dcddc88a15901f9eac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.11/clank_linux_arm64.tar.gz"
      sha256 "3a8b39a435ff45b7200c829e6605afa65c3b751ed6b4f6e9c54e8e4e3a032d5e"
    end
    on_intel do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.11/clank_linux_amd64.tar.gz"
      sha256 "444f71d34a44a968719d4ad7fd429942b76ca3d3ef5c83f086b358486f3128a4"
    end
  end

  def install
    bin.install "clank"
  end

  test do
    assert_match "clank version", shell_output("#{bin}/clank version")
  end
end
