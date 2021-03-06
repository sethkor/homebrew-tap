# This file was generated by GoReleaser. DO NOT EDIT.
class Lexbelt < Formula
  desc "Fast S3 Tools built in GoLang Using Multiparts and Concurrency"
  homepage ""
  version ".0.0.7"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/sethkor/lexbelt/releases/download/v.0.0.7/lexbelt_.0.0.7_Darwin_amd64.tar.gz"
    sha256 "948b1e0efeb951e3690708a60ddf8829e61764c35230208684cb358ca98f4f36"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/sethkor/lexbelt/releases/download/v.0.0.7/lexbelt_.0.0.7_Linux_amd64.tar.gz"
      sha256 "161a4b4d2779847ca743ea638f87de68a80d0ee7aa5b0a2bb31afb1eee6e7535"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sethkor/lexbelt/releases/download/v.0.0.7/lexbelt_.0.0.7_Linux_arm64.tar.gz"
        sha256 "bee9d6df98cdcc1bbb2d02e67dddd668c606ac701a39eb0556a7428c97a6ccb0"
      else
        url "https://github.com/sethkor/lexbelt/releases/download/v.0.0.7/lexbelt_.0.0.7_Linux_armv6.tar.gz"
        sha256 "4f6ea99651c6c3d12c4ff7f0c323ca2c4ca04707c1c76c4b2bebf88053190abe"
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
