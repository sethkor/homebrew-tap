class S3kor < Formula
  desc "Fast Async S3 tools written in Go"
  homepage "https://github.com/sethkor/s3kor"
  version "0.0.20"

  if OS.mac?
    url "https://github.com/sethkor/s3kor/releases/download/0.0.20/s3kor_0.0.20_Darwin_amd64.tar.gz"
    sha256 "58828c0a8ff84bf33dbf1fb665ce8a6e2dff0d652acb36a6e64cbb9a44e23a52"
  elsif OS.linux?
  
    case RbConfig::CONFIG["host_cpu"]
    when "aarch64"
      url "https://github.com/sethkor/s3kor/releases/download/0.0.20/s3kor_0.0.20_Linux_arm64.tar.gz"
      sha256 "3f22248547f7351c89fe2f357d583be5fad5454c8e5e4f90665984a55754f063"   
    when "x86_64" 
      url "https://github.com/sethkor/s3kor/releases/download/0.0.20/s3kor_0.0.20_Linux_amd64.tar.gz"
      sha256 "310d66f0436462086da111a909faa4f4ef9f308476c62064be544974eab778dd"
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
