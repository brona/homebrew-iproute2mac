require "formula"

class Iproute2mac < Formula
  homepage "https://github.com/brona/iproute2mac"
  url "https://github.com/brona/iproute2mac/archive/v1.0.8.zip"
  sha1 "9a8044b3fb1e1c2f410212e7138a61d662e75c3b"

  depends_on :python

  def install
    bin.install "src/ip.py" => "ip"
  end

  test do
    system "#{bin}/ip", "address"
  end
end
