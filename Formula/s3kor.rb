class S3kor < Formula
  desc "Fast Async S3 tools written in Go"
  homepage "https://github.com/sethkor/s3kor"
  version "0.0.15"

  if OS.mac?
    url "https://github.com/sethkor/s3kor/releases/download/0.0.15/s3kor_0.0.15_Darwin_amd64.tar.gz"
    sha256 "bc54417a14dc9538bef0e1f7ab269477503221c7b7c8ac4116f55c179c082397"
  elsif OS.linux?
  
    case RbConfig::CONFIG["host_cpu"]
    when "aarch64"
      url "https://github.com/sethkor/s3kor/releases/download/0.0.15/s3kor_0.0.15_Linux_arm64.tar.gz"
      sha256 "a92a2c7e896d3dea35ff127c531175bfbb78a1a05eaccaa7366c188c9a4396c5"   
    when "x86_64" 
      url "https://github.com/sethkor/s3kor/releases/download/0.0.15/s3kor_0.0.15_Linux_amd64.tar.gz"
      sha256 "e15445b8bd8ef891d491d95844c276e4ec5296e7c775ef8a692b7f8dac7f25e1"
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
