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
  homepage "https://github.com/YOUR_GITHUB_USERNAME/termtune"
  url "https://github.com/YOUR_GITHUB_USERNAME/termtune/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "REPLACE_WITH_ACTUAL_SHA256"
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
