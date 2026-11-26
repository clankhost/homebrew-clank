class Clank < Formula
  desc "CLI for the Clank deployment platform"
  homepage "https://clank.host"
  version "0.3.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.20/clank_darwin_arm64.tar.gz"
      sha256 "16ea9c6255aab6bc7b86b286a4ed7d83d333bcf28fe3cabc3740756dd64aaae9"
    end
    on_intel do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.20/clank_darwin_amd64.tar.gz"
      sha256 "6d8290a212a6b61964dfd01a4178b6ab741fe7b37c4f1ec1b535b87b2102efd6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.20/clank_linux_arm64.tar.gz"
      sha256 "0165b609872245b09efde55fb08c5d571f452a9dc7fac8d73e0896cd79994095"
    end
    on_intel do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.20/clank_linux_amd64.tar.gz"
      sha256 "38f6f97d46112b7f25c692d20fa2acad59122a26e4875f39da73407072b44806"
    end
  end

  def install
    bin.install "clank"
  end

  test do
    assert_match "clank version", shell_output("#{bin}/clank version")
  end
end
