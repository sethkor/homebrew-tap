class S3kor < Formula
  desc "Fast Async S3 tools"
  homepage "https://github.com/sethkor/s3kor"
  version "0.0.8"

  if OS.mac?
    url "https://github.com/sethkor/s3kor/releases/download/0.0.8/s3kor_0.0.8_Darwin_amd64.tar.gz"
    sha256 "80547c6a5ca989bb8a865cfb108b96f8f82c9d80bc90ab1f9451cec1e04e30ec"
  elsif OS.linux?
  
    case RbConfig::CONFIG["host_cpu"]
    when "aarch64"
      url "https://github.com/sethkor/s3kor/releases/download/0.0.8/s3kor_0.0.8_Linux_arm64.tar.gz"
      sha256 "5073932b0733a11149f75f6bef318b63359cdfc11565b849de33fe3dac1f7ca2"   
    when "x86_64" 
      url "https://github.com/sethkor/s3kor/releases/download/0.0.8/s3kor_0.0.8_Linux_amd64.tar.gz"
      sha256 "83e49d0581a2553219a4f61ef03a327b106c2427dfc6d7a8468c693dc5ff1fe0"
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
