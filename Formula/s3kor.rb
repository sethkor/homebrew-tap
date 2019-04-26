class S3kor < Formula
  desc "Fast Async S3 tools"
  homepage "https://github.com/sethkor/s3kor/"
  version "0.0.1"

  if OS.mac?
    url "https://github.com/sethkor/s3kor/releases/download/0.0.1/s3kor_0.0.1_Darwin_amd64.tar.gz"
    sha256 "da36fc3149246dfac44d78475364f3a31c39c656e40fbc86ffce604e31b1b5a5"
  elsif OS.linux?
  
    case RbConfig::CONFIG["host_cpu"]
    when "aarch64"
      url "https://github.com/sethkor/s3kor/releases/download/0.0.1/s3kor_0.0.1_Linux_arm64.tar.gz"
      sha256 "f461c0b04e06e46a26793f2138c78bafe7bbae6e46a0b2ea47cdca62f919cc56"   
    when "x86_64" 
      url "https://github.com/sethkor/s3kor/releases/download/0.0.1/s3kor_0.0.1_Linux_amd64.tar.gz"
      sha256 "f90c3960e3413bf06e0d843e70570c47219f865c98f1801e57c9ee867e0612ed"
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
