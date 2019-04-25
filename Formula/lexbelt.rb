# This file was generated by GoReleaser. DO NOT EDIT.
class Lexbelt < Formula
  desc "cli tools for AWS Lex"
  homepage "https://github.com/sethkor/lexbelt/"
  version "0.0.2"

  if OS.mac?
    url "https://github.com/sethkor/lexbelt/releases/download/0.0.2/lexbelt_0.0.2_Darwin_amd64.tar.gz"
    sha256 "b99ffed098ebb1411f04abbea5da46274e2bcf5f821b3670240e30ecc89e5ffa"
  elsif OS.linux?
  
    if OS.bits == 64 then

#     if OS.bits == 64
      url "https://github.com/sethkor/lexbelt/releases/download/0.0.2/lexbelt_0.0.2_Linux_amd64.tar.gz"
      sha256 "0910b4419f9739457552bb567774bcf3c89c5c9c5060ceec74d28af55a54092d"
   end
  end

  def install
    bin.install "lexbelt"
  end

  test do
    system "#{bin}/program --version"
  end
end
