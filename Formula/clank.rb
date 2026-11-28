class Clank < Formula
  desc "CLI for Clank self-hosted PaaS"
  homepage "https://clank.host"
  version "0.3.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.21/clank_darwin_arm64.tar.gz"
      sha256 "0d479d5c231781897db573d9afc5a908f5d6d67cecef3e3bce90beee36b64f50"
    else
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.21/clank_darwin_amd64.tar.gz"
      sha256 "289e942d77fa99d532c9b1a5f99c96c5c6168849e5eb1f546c21c7ec1df840a2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.21/clank_linux_arm64.tar.gz"
      sha256 "9821087fc51313b342c202b405e19f2063b040b0ae664bebe3473972c742fb1c"
    else
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.21/clank_linux_amd64.tar.gz"
      sha256 "b4a3427331d66a29368c7e6dd24083cb438f31a7786a4c0d4ed76a5b31c86d84"
    end
  end

  def install
    bin.install "clank"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clank version")
  end
end
