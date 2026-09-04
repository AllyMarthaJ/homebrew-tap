class Profmt < Formula
  desc "Fast, deterministic, configurable Protocol Buffers formatter"
  homepage "https://github.com/StileEducation/profmt"
  url "https://github.com/StileEducation/profmt/archive/refs/tags/0.1.0.tar.gz"
  sha256 "a41ceb2ec2c4f828c94044cc1bdfa6dbd75f5c6be0767c976c52d0375e1693d9"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_equal "message A {}\n", pipe_output("#{bin}/profmt --no-config -", "message A{}\n")
    assert_match version.to_s, shell_output("#{bin}/profmt --version")
  end
end
