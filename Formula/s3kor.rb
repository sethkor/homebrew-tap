class S3kor < Formula
  desc "Fast Async S3 tools written in Go"
  homepage "https://github.com/sethkor/s3kor"
  version "0.0.18"

  if OS.mac?
    url "https://github.com/sethkor/s3kor/releases/download/0.0.18/s3kor_0.0.18_Darwin_amd64.tar.gz"
    sha256 "a1f036d8b0037296643e4c4ae8b10ef531bf22f71f1203b58d294e128ce12725"
  elsif OS.linux?
  
    case RbConfig::CONFIG["host_cpu"]
    when "aarch64"
      url "https://github.com/sethkor/s3kor/releases/download/0.0.18/s3kor_0.0.18_Linux_arm64.tar.gz"
      sha256 "c1608090d1073909a6d292d512e56d9e4fb0d197b02424f4bc31da935dc6dbee"   
    when "x86_64" 
      url "https://github.com/sethkor/s3kor/releases/download/0.0.18/s3kor_0.0.18_Linux_amd64.tar.gz"
      sha256 "af607a55a2b0f4c8704c373bc2b90f1d521e101aa44ed4bb85e8a15115093e67"
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
