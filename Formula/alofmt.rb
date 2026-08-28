class Alofmt < Formula
  desc "Fast, deterministic, configurable Ruby formatter"
  homepage "https://github.com/StileEducation/alofmt"
  url "https://github.com/StileEducation/alofmt/archive/refs/tags/0.1.0.tar.gz"
  sha256 "3307c60a5619f54df3479efdcbd47b277d8f352ef69dfae8ac71234b8e573a37"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_equal "value = 1\n", pipe_output("#{bin}/alofmt --no-config -", "value=1\n")
    assert_match version.to_s, shell_output("#{bin}/alofmt --version")
  end
end
