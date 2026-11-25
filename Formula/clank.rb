class Clank < Formula
  desc "CLI for the Clank deployment platform"
  homepage "https://clank.host"
  version "0.3.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.14/clank_darwin_arm64.tar.gz"
      sha256 "9b3dd30c96f9533345253a8442c2d590fc0c1790c2d83caca706b736d12c456f"
    end
    on_intel do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.14/clank_darwin_amd64.tar.gz"
      sha256 "6030f1eda127f1f668dd2cb178daaeaa34f3a058ce7540c6c885117dc8e21613"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.14/clank_linux_arm64.tar.gz"
      sha256 "96659be6dae358912b9042eaae7c9c214e900de343bc0bb090fc53da4e5cf70e"
    end
    on_intel do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.14/clank_linux_amd64.tar.gz"
      sha256 "46519e55c60b717f37c821e6b0788d31ae413251f8e4caadb1b71af51bcaacc4"
    end
  end

  def install
    bin.install "clank"
  end

  test do
    assert_match "clank version", shell_output("#{bin}/clank version")
  end
end
