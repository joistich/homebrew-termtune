# Homebrew formula for termtune — source build via Cargo.
#
# Install from a tap:
#   brew tap YOUR_GITHUB_USERNAME/termtune
#   brew install termtune
#
# Or install directly:
#   brew install YOUR_GITHUB_USERNAME/termtune/termtune

class Termtune < Formula
  desc "Lightweight terminal YouTube audio player"
  homepage "https://github.com/joistich/termtune"
  url "https://github.com/joistich/termtune/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f1992c73c544f66e99e28e6c1629e9162d6a842c182d206f86977ef39bd7764b"
  license "MIT"

  depends_on "rust" => :build
  depends_on "mpv"
  depends_on "yt-dlp"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "termtune #{version}", shell_output("#{bin}/termtune --version").strip
  end
end
