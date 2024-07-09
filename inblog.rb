class Inblog < Formula
  desc "Write a blog from your email"
  homepage "https://github.com/weebney/inblog"
  url "https://github.com/weebney/inblog.git",
      tag: "v1.0",
      revision: "ac498ce30155550dd59139f5cf2f65f622b82073"
  license "BSD-2-Clause"

  depends_on "go" => :build
  depends_on "make" => :build

  def install
    system "make"
    bin.install "bin/inblog"
  end
end
