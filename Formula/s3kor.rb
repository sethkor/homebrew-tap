class S3kor < Formula
  desc "Fast Async S3 tools written in Go"
  homepage "https://github.com/sethkor/s3kor"
  version "0.0.16"

  if OS.mac?
    url "https://github.com/sethkor/s3kor/releases/download/0.0.16/s3kor_0.0.16_Darwin_amd64.tar.gz"
    sha256 "2c06f58c78419d65e69728b1452b31ca6fd452d7faae74befeabf52217e96ac3"
  elsif OS.linux?
  
    case RbConfig::CONFIG["host_cpu"]
    when "aarch64"
      url "https://github.com/sethkor/s3kor/releases/download/0.0.16/s3kor_0.0.16_Linux_arm64.tar.gz"
      sha256 "62fc3460a88f8c9b085afe841372d56aab334489f33fae8019756d578260f294"   
    when "x86_64" 
      url "https://github.com/sethkor/s3kor/releases/download/0.0.16/s3kor_0.0.16_Linux_amd64.tar.gz"
      sha256 "67b1405b814669c9299ccad3a91eb944c0b2030c461623160cae9bf73f4d57f6"
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
