require "formula"

class Iproute2mac < Formula
  homepage "https://github.com/brona/iproute2mac"
  url "https://github.com/brona/iproute2mac/archive/v1.0.7.zip"
  sha1 "6e456a11eb9282efc0c3bd23ae71b5c4b813c660"

  depends_on :python

  def install
    bin.install "src/ip.py" => "ip"
  end

  test do
    system "#{bin}/ip", "address"
  end
end
