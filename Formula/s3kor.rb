class S3kor < Formula
  desc "Fast Async S3 tools written in Go"
  homepage "https://github.com/sethkor/s3kor"
  version "0.0.24"

  if OS.mac?
    url "https://github.com/sethkor/s3kor/releases/download/0.0.24/s3kor_0.0.24_Darwin_amd64.tar.gz"
    sha256 "6092e5b08fbeb4745267a9f31cbf550fe77a4cb01a74dc3557188d6f6eea2b6c"
  elsif OS.linux?
  
    case RbConfig::CONFIG["host_cpu"]
    when "aarch64"
      url "https://github.com/sethkor/s3kor/releases/download/0.0.24/s3kor_0.0.24_Linux_arm64.tar.gz"
      sha256 "e0725439235fba92fe932b4803baaff1cb1fee306470c05c39d6af0b5ddb22a5"   
    when "x86_64" 
      url "https://github.com/sethkor/s3kor/releases/download/0.0.24/s3kor_0.0.24_Linux_amd64.tar.gz"
      sha256 "90b7d691cda9da57f1f45d996fd5431b9224b9dfdf725dcd03a01d4320b49323"
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
