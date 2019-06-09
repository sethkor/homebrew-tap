class S3kor < Formula
  desc "Fast Async S3 tools"
  homepage "https://github.com/sethkor/s3kor"
  version "0.0.13"

  if OS.mac?
    url "https://github.com/sethkor/s3kor/releases/download/0.0.13/s3kor_0.0.13_Darwin_amd64.tar.gz"
    sha256 "2d16b3dfe60cbfa13061dbcd4e7ab13c222616688566a5b25c272ed74ab94cb0"
  elsif OS.linux?
  
    case RbConfig::CONFIG["host_cpu"]
    when "aarch64"
      url "https://github.com/sethkor/s3kor/releases/download/0.0.13/s3kor_0.0.13_Linux_arm64.tar.gz"
      sha256 af310595a4ab99e28b25a57d031922df5e0fb518dbcd71a26dd2d97123ee405a"   
    when "x86_64" 
      url "https://github.com/sethkor/s3kor/releases/download/0.0.13/s3kor_0.0.0.0.13_Linux_amd64.tar.gz"
      sha256 "e576f5bb769921e8f5e8442b26298c4df5e6bde9dcab6ecf706d539f8a57e18a"
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
