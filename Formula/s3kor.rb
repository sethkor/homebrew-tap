class S3kor < Formula
  desc "Fast Async S3 tools written in Go"
  homepage "https://github.com/sethkor/s3kor"
  version "0.0.23"

  if OS.mac?
    url "https://github.com/sethkor/s3kor/releases/download/0.0.23/s3kor_0.0.23_Darwin_amd64.tar.gz"
    sha256 "270e354b4aad344c5ce4713bf2185226c9e677265aea5756cc8e0e32cc535998"
  elsif OS.linux?
  
    case RbConfig::CONFIG["host_cpu"]
    when "aarch64"
      url "https://github.com/sethkor/s3kor/releases/download/0.0.23/s3kor_0.0.23_Linux_arm64.tar.gz"
      sha256 "7fcc38e49ce36d45be26434f46d8051c58d1aa00c3c560d57430437e843d0752"   
    when "x86_64" 
      url "https://github.com/sethkor/s3kor/releases/download/0.0.23/s3kor_0.0.23_Linux_amd64.tar.gz"
      sha256 "43e28a28c4fef0cfecdc57150546bea045d31deefad6cf2b4e8a128fa97ba33a"
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
