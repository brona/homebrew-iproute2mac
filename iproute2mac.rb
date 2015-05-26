require "formula"

class Iproute2mac < Formula
  homepage "https://github.com/brona/iproute2mac"
  url "https://github.com/brona/iproute2mac/archive/v1.0.3.zip"
  sha1 "052628cb3debab40175c9cc5fa39588e33ab006e"
  sha1 "ba80de6e1c525c450ea6a33b069f11f65cbe784b"

  depends_on :python

  def install
    bin.install "src/ip.py" => "ip"
  end

  test do
    system "#{bin}/ip", "address"
  end
end
