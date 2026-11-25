class Clank < Formula
  desc "CLI for the Clank deployment platform"
  homepage "https://clank.host"
  version "0.3.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.16/clank_darwin_arm64.tar.gz"
      sha256 "3cafe45e1a769e6dd4071f5f7e6e24b76b2c503e97d31bfea46025fde8343939"
    end
    on_intel do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.16/clank_darwin_amd64.tar.gz"
      sha256 "507067e3e0453068431810013df1a19406ff2dbaac3a9b898aac795e2147e0d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.16/clank_linux_arm64.tar.gz"
      sha256 "2e774050116e8bca5e453c8a37f7614cc7cd13d3989e4ce54b2edece2bc78a3d"
    end
    on_intel do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.16/clank_linux_amd64.tar.gz"
      sha256 "77725bb2720e39ae8b9af0f0010674e31d2771ffce5d3c6c5c8edb870a310ac5"
    end
  end

  def install
    bin.install "clank"
  end

  test do
    assert_match "clank version", shell_output("#{bin}/clank version")
  end
end
