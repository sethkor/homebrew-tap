class S3kor < Formula
  desc "Fast Async S3 tools written in Go"
  homepage "https://github.com/sethkor/s3kor"
  version "0.0.17"

  if OS.mac?
    url "https://github.com/sethkor/s3kor/releases/download/0.0.17/s3kor_0.0.17_Darwin_amd64.tar.gz"
    sha256 "c77a312218fb7488a39a49e4270b5ed1ae1a7195a240178d551b3217fc83ed07"
  elsif OS.linux?
  
    case RbConfig::CONFIG["host_cpu"]
    when "aarch64"
      url "https://github.com/sethkor/s3kor/releases/download/0.0.17/s3kor_0.0.17_Linux_arm64.tar.gz"
      sha256 "fefe6a329daa5d9d11f02cbadece5483d27a9947b306091c938b3f25c1d7af59"   
    when "x86_64" 
      url "https://github.com/sethkor/s3kor/releases/download/0.0.17/s3kor_0.0.17_Linux_amd64.tar.gz"
      sha256 "0144c0f864e73f87965d8311dfa4cc1dfc7320aacfbdf97257afc982c6e0daf3"
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
