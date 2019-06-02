class S3kor < Formula
  desc "Fast Async S3 tools"
  homepage "https://github.com/sethkor/s3kor"
  version "0.0.11"

  if OS.mac?
    url "https://github.com/sethkor/s3kor/releases/download/0.0.11/s3kor_0.0.11_Darwin_amd64.tar.gz"
    sha256 "7c1ad158d450070ee0fdaa1f007f1752e32ec73e4008d9b0238e5c8f072fa8d8"
  elsif OS.linux?
  
    case RbConfig::CONFIG["host_cpu"]
    when "aarch64"
      url "https://github.com/sethkor/s3kor/releases/download/0.0.11/s3kor_0.0.11_Linux_arm64.tar.gz"
      sha256 "bb77d440b50fc869f4f4fa8ac986ba9dc31fc1b72b03352be12f83c4015659bb"   
    when "x86_64" 
      url "https://github.com/sethkor/s3kor/releases/download/0.0.11/s3kor_0.0.0.0.11_Linux_amd64.tar.gz"
      sha256 "84d115cfda17a6fa7d27cf1fa388362efce7769b5cef4e67cc46e15b6dc2c95c"
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
