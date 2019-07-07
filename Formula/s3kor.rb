class S3kor < Formula
  desc "Fast Async S3 tools written in Go"
  homepage "https://github.com/sethkor/s3kor"
  version "0.0.22"

  if OS.mac?
    url "https://github.com/sethkor/s3kor/releases/download/0.0.22/s3kor_0.0.22_Darwin_amd64.tar.gz"
    sha256 "ce5970a5e8ba9eab85915f26628a0607828d893d52cf8c712afdda240d428db9"
  elsif OS.linux?
  
    case RbConfig::CONFIG["host_cpu"]
    when "aarch64"
      url "https://github.com/sethkor/s3kor/releases/download/0.0.22/s3kor_0.0.22_Linux_arm64.tar.gz"
      sha256 "8b9a633ac58da7d3366255b6d31827b1aad4eca2098f5b4a55d4f446638c9831"   
    when "x86_64" 
      url "https://github.com/sethkor/s3kor/releases/download/0.0.22/s3kor_0.0.22_Linux_amd64.tar.gz"
      sha256 "e9328979aebdad1d1bc53c47d4c98026468fc89410b84fc91571a17ca355d785"
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
