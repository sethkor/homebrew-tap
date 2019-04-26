class S3kor < Formula
  desc "Fast Async S3 tools"
  homepage "https://github.com/sethkor/s3kor/"
  version "0.0.1"

  if OS.mac?
    url "https://github.com/sethkor/s3kor/releases/download/0.0.1/s3kor_0.0.1_Darwin_amd64.tar.gz"
    sha256 "f6293c804608be0832ad606cb1c503af99d33eedff01ce024c036782848d4a1c"
  elsif OS.linux?
  
    case RbConfig::CONFIG["host_cpu"]
    when "aarch64"
      url "https://github.com/sethkor/s3kor/releases/download/0.0.1/s3kor_0.0.1_Linux_arm64.tar.gz"
      sha256 "b0aac23b49a328aeddf1124a1f4789fd2a2c05642da6ce9c81929d281cc3694b"   
    when "x86_64" 
      url "https://github.com/sethkor/s3kor/releases/download/0.0.1/s3kor_0.0.1_Linux_amd64.tar.gz"
      sha256 "381e3b5c0b00ff9d05891966c993ac8d16c037a9bd43b06dc0e2b3f2f7305a3e"
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
