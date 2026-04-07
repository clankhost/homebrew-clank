class Clank < Formula
  desc "CLI for the Clank deployment platform"
  homepage "https://clank.host"
  version "0.3.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.10/clank_darwin_arm64.tar.gz"
      sha256 "b9d202d05628ae9734ffa8ce8a431a235210dc696069d02b68a0cca64966788d"
    end
    on_intel do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.10/clank_darwin_amd64.tar.gz"
      sha256 "ad7b8bc74a1273f9ffc3e80cfbee8d4e7dd8de7f2f444f92e68c9e9827b86131"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.10/clank_linux_arm64.tar.gz"
      sha256 "bafd0d37092773ff0ed52f1a47dc847de9b8e257e1d45e0a7a0f961e4791b6f3"
    end
    on_intel do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.10/clank_linux_amd64.tar.gz"
      sha256 "9778a7a206f344f6bdabb72ddf979f2581b89369925268100cb16ac089024049"
    end
  end

  def install
    bin.install "clank"
  end

  test do
    assert_match "clank version", shell_output("#{bin}/clank version")
  end
end
