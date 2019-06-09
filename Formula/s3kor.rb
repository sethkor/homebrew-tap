class S3kor < Formula
  desc "Fast Async S3 tools"
  homepage "https://github.com/sethkor/s3kor"
  version "0.0.14"

  if OS.mac?
    url "https://github.com/sethkor/s3kor/releases/download/0.0.14/s3kor_0.0.14_Darwin_amd64.tar.gz"
    sha256 "29ab794c65edafc6fa1e6f887f7875e7294f63515d514daa82b2d67af4ff4ad4"
  elsif OS.linux?
  
    case RbConfig::CONFIG["host_cpu"]
    when "aarch64"
      url "https://github.com/sethkor/s3kor/releases/download/0.0.14/s3kor_0.0.14_Linux_arm64.tar.gz"
      sha256 "db3d80519f7864162a71a362cf11d039b24849a470c447c540893f98014f0d1b"   
    when "x86_64" 
      url "https://github.com/sethkor/s3kor/releases/download/0.0.14/s3kor_0.0.14_Linux_amd64.tar.gz"
      sha256 "af757cf715ad9ced10c17b8e3746c8e1740690ca05b897a57396a23d7e1c2ee4"
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
