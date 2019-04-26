class Lexbelt < Formula
  desc "cli tools for AWS Lex"
  homepage "https://github.com/sethkor/lexbelt/"
  version "0.0.2"

  if OS.mac?
    url "https://github.com/sethkor/lexbelt/releases/download/0.0.2/lexbelt_0.0.2_Darwin_amd64.tar.gz"
    sha256 "b99ffed098ebb1411f04abbea5da46274e2bcf5f821b3670240e30ecc89e5ffa"
  elsif OS.linux?
  
    case RbConfig::CONFIG["host_cpu"]
    when "aarch64"
      url "https://github.com/sethkor/lexbelt/releases/download/0.0.2/lexbelt_0.0.2_Linux_arm64.tar.gz"
      sha256 "1c4fb160b741ebefbf35fedff8f569c494ddfdae52e0f9f454618891f7ed7183"   
    when "x86_64" 
      url "https://github.com/sethkor/lexbelt/releases/download/0.0.2/lexbelt_0.0.2_Linux_amd64.tar.gz"
      sha256 "0910b4419f9739457552bb567774bcf3c89c5c9c5060ceec74d28af55a54092d"
    else
      ohdie "Architecture not supported by this forumla"
    end
  end

  def install
    bin.install "lexbelt"
  end

  test do
    system "#{bin}/program --version"
  end
end
