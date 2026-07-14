class Clank < Formula
  desc "CLI for the Clank deployment platform"
  homepage "https://clank.host"
  version "0.3.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.13/clank_darwin_arm64.tar.gz"
      sha256 "cf4d36ddc6e71068cccd1a1c31cc91007223952bd18698c7e2056ff11da1c7b4"
    end
    on_intel do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.13/clank_darwin_amd64.tar.gz"
      sha256 "6bd618c6b8a6b93319fe7c0d1b265cab1dd359e04e7a987396bea82a32819cb5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.13/clank_linux_arm64.tar.gz"
      sha256 "8021ea03299f423006d72bfbce36511bad62128824a361a180e405ae24563ef6"
    end
    on_intel do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.13/clank_linux_amd64.tar.gz"
      sha256 "25fa0f85b7f9e984e079accff0857390676b2a025ecea89e96c972987f4dfd77"
    end
  end

  def install
    bin.install "clank"
  end

  test do
    assert_match "clank version", shell_output("#{bin}/clank version")
  end
end
