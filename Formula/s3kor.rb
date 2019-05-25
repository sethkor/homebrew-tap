class S3kor < Formula
  desc "Fast Async S3 tools"
  homepage "https://github.com/sethkor/s3kor/"
  version "0.0.6"

  if OS.mac?
    url "https://github.com/sethkor/s3kor/releases/download/0.0.6/s3kor_0.0.6_Darwin_amd64.tar.gz"
    sha256 "26c8bdfe91cde196ea7f6e45760be1765a89175c0eb3ca2c02844658803098ec"
  elsif OS.linux?
  
    case RbConfig::CONFIG["host_cpu"]
    when "aarch64"
      url "https://github.com/sethkor/s3kor/releases/download/0.0.6/s3kor_0.0.6_Linux_arm64.tar.gz"
      sha256 "30b7ba07b6a628890986cee535300b6ae460a9724cc9986c3e66ad57f7170f0d"   
    when "x86_64" 
      url "https://github.com/sethkor/s3kor/releases/download/0.0.6/s3kor_0.0.6_Linux_amd64.tar.gz"
      sha256 "f62accdd2f52f0474b8a0043856337d1ec1a03f3fd0fcb508a27298dab15c263"
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
