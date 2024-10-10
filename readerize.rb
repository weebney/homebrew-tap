class Readerize < Formula
  desc "Extract useful page content from HTML on the command line via Readability.js"
  homepage "https://github.com/weebney/readerize"
  url "https://github.com/weebney/readerize.git",
      tag: "v0.1.0-denofix",
      revision: "437e1b8f3857950ad74168908beb83b61f6f4e3c"
  license "0BSD"

  depends_on "deno" => :build

  def install
    system "deno task build"
    bin.install "bin/readerize"
  end
end
