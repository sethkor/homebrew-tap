class S3kor < Formula
  desc "Fast Async S3 tools"
  homepage "https://github.com/sethkor/s3kor"
  version "0.0.9"

  if OS.mac?
    url "https://github.com/sethkor/s3kor/releases/download/0.0.9/s3kor_0.0.9_Darwin_amd64.tar.gz"
    sha256 "1087e61b057e7ece132f086e292481e78689d77842ba41c4cc2d18a52cb16f75"
  elsif OS.linux?
  
    case RbConfig::CONFIG["host_cpu"]
    when "aarch64"
      url "https://github.com/sethkor/s3kor/releases/download/0.0.9/s3kor_0.0.9_Linux_arm64.tar.gz"
      sha256 "04522f7b658df9e3216813c9940a0ea5126265ead4fc10ddb946779c74f98365"   
    when "x86_64" 
      url "https://github.com/sethkor/s3kor/releases/download/0.0.9/s3kor_0.0.9_Linux_amd64.tar.gz"
      sha256 "13d0a42625d9b84a2a26e1e4b69dd1e0ce110b288c41ed6dceca2726072899dc"
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
