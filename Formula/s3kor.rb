class S3kor < Formula
  desc "Fast Async S3 tools"
  homepage "https://github.com/sethkor/s3kor"
  version "0.0.12"

  if OS.mac?
    url "https://github.com/sethkor/s3kor/releases/download/0.0.12/s3kor_0.0.12_Darwin_amd64.tar.gz"
    sha256 "1fa25d4af9431423b10968e50fcee9b2c4ba007c386f3165160ea47638d8ec68"
  elsif OS.linux?
  
    case RbConfig::CONFIG["host_cpu"]
    when "aarch64"
      url "https://github.com/sethkor/s3kor/releases/download/0.0.12/s3kor_0.0.12_Linux_arm64.tar.gz"
      sha256 "b18be3a5aaf84813263c08d3cd4c930260daa012a70c7758b2f95a5dbbaec313"   
    when "x86_64" 
      url "https://github.com/sethkor/s3kor/releases/download/0.0.12/s3kor_0.0.0.0.12_Linux_amd64.tar.gz"
      sha256 "2c284c3403f10e96abdb694214f63cb10edf8bfb0338a52efee7ab4fac0a106c"
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
