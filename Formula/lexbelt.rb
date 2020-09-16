# This file was generated by GoReleaser. DO NOT EDIT.
class Lexbelt < Formula
  desc "Fast S3 Tools built in GoLang Using Multiparts and Concurrency"
  homepage ""
  version "0.0.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/sethkor/lexbelt/releases/download/v0.0.5/lexbelt_0.0.5_Darwin_amd64.tar.gz"
    sha256 "a1a296a9b0a31853e4ad952a7a03dc770d7f1a61b0911fc99eb6d13ff2f403e6"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/sethkor/lexbelt/releases/download/v0.0.5/lexbelt_0.0.5_Linux_amd64.tar.gz"
      sha256 "6331bdfd12e256bdd4fdcfb7e3b9806700dd5d6b418e451c987bff08b677bf0b"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sethkor/lexbelt/releases/download/v0.0.5/lexbelt_0.0.5_Linux_arm64.tar.gz"
        sha256 "c0d4bf6c59efbc05c227c8c8e4cb2d248dd2374e1a81ba4af639c7e6bcc9f55d"
      else
        url "https://github.com/sethkor/lexbelt/releases/download/v0.0.5/lexbelt_0.0.5_Linux_armv6.tar.gz"
        sha256 "9cb3cf6a841abfa934bdcd7dca5ecfbb0bedc65cba921ae0070401e304fffe2f"
      end
    end
  end

  def install
    bin.install "lexbelt"
  end

  test do
    system "#{bin}/program --version"
  end
end
