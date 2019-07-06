class S3kor < Formula
  desc "Fast Async S3 tools written in Go"
  homepage "https://github.com/sethkor/s3kor"
  version "0.0.21"

  if OS.mac?
    url "https://github.com/sethkor/s3kor/releases/download/0.0.21/s3kor_0.0.21_Darwin_amd64.tar.gz"
    sha256 "c00d43c04284895aa4393b2e5625d20922bc04dfc34d0fea13b66a66e027d362"
  elsif OS.linux?
  
    case RbConfig::CONFIG["host_cpu"]
    when "aarch64"
      url "https://github.com/sethkor/s3kor/releases/download/0.0.21/s3kor_0.0.21_Linux_arm64.tar.gz"
      sha256 "51fecf2014cd60118667071ee09473bd0866a25ad0dce9d769cfc5c28c61a6c5"   
    when "x86_64" 
      url "https://github.com/sethkor/s3kor/releases/download/0.0.21/s3kor_0.0.21_Linux_amd64.tar.gz"
      sha256 "a6f8fb0a27435b23a5d22fe5b9c4ad6214b67b1663363684ed542247944461cc"
    else
      ohdie "Architecture not supported by this forumla"
    end
  end

  def install
    bin.install "s3kor"
  end

  test do
    system "#{bin}/program --version"
  end
end
