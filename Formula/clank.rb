class Clank < Formula
  desc "CLI for the Clank deployment platform"
  homepage "https://clank.host"
  version "0.3.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.18/clank_darwin_arm64.tar.gz"
      sha256 "9b893e2c428369cb2565f77fe527e89cc13b8919af8f43afe7b2a582511d69ca"
    end
    on_intel do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.18/clank_darwin_amd64.tar.gz"
      sha256 "55ac4ee49bd48deed84ba321aa2ac814c2bb208d396036bd6cc2751d8732e5a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.18/clank_linux_arm64.tar.gz"
      sha256 "dcb9becf10c939895ba1fdc9ca474d5f1d430a03a4e85637f4cb5545e07f7f2f"
    end
    on_intel do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.18/clank_linux_amd64.tar.gz"
      sha256 "2a240dc0e937ede7390216dc9f120a3d898653dc088df59c379c8e2e69672d97"
    end
  end

  def install
    bin.install "clank"
  end

  test do
    assert_match "clank version", shell_output("#{bin}/clank version")
  end
end
