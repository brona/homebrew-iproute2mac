require "formula"

class Iproute2mac < Formula
  homepage "https://github.com/brona/iproute2mac"
  url "https://github.com/brona/iproute2mac/archive/v1.1.0.zip"
  sha1 "9b6b7992179b8cfb0daa90cd3a712893f5c3c68c"

  depends_on :python

  def install
    bin.install "src/ip.py" => "ip"
  end

  test do
    system "#{bin}/ip", "address"
  end
end
