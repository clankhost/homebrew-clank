class Clank < Formula
  desc "CLI for the Clank deployment platform"
  homepage "https://clank.host"
  version "0.3.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.15/clank_darwin_arm64.tar.gz"
      sha256 "7e5a7b6ef39c3fa6ff089ebc4d4f1bb7f1d9ba054fdf8ea3e17cdb20d81d203d"
    end
    on_intel do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.15/clank_darwin_amd64.tar.gz"
      sha256 "7861527e4efa78f177cf3adc6194d961f92ec24a93b212717f8e92cbc23ad054"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.15/clank_linux_arm64.tar.gz"
      sha256 "5bc9dcb66ecbbecd532add6fc250fa48705b9247696cf05899da9a7ac91cab39"
    end
    on_intel do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.15/clank_linux_amd64.tar.gz"
      sha256 "c3f757f054d6cbb79833212cfed2137fdc5b59b5f1cc491bf6fa11b60f59d85d"
    end
  end

  def install
    bin.install "clank"
  end

  test do
    assert_match "clank version", shell_output("#{bin}/clank version")
  end
end
