class Clank < Formula
  desc "CLI for the Clank deployment platform"
  homepage "https://clank.host"
  version "0.3.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.12/clank_darwin_arm64.tar.gz"
      sha256 "2f01d72fc3da90c9610ef8db2ff18583240337e56cef8ed432c7158c38a65a73"
    end
    on_intel do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.12/clank_darwin_amd64.tar.gz"
      sha256 "6ec67df71e31907963d96d0257aea9562a7f5944bc87bc9bad277045e5fd4854"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.12/clank_linux_arm64.tar.gz"
      sha256 "c02fe50d4eebf122506901aae71eab4df5df97ce9f0e9608118471a8dc59757a"
    end
    on_intel do
      url "https://github.com/clankhost/clank-cli/releases/download/v0.3.12/clank_linux_amd64.tar.gz"
      sha256 "49bc99253011b6fbb0bc87181c13ed97597941164a834551b53ad90f62fa314d"
    end
  end

  def install
    bin.install "clank"
  end

  test do
    assert_match "clank version", shell_output("#{bin}/clank version")
  end
end
