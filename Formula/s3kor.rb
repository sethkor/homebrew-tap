class S3kor < Formula
  desc "Fast Async S3 tools"
  homepage "https://github.com/sethkor/s3kor"
  version "0.0.11"

  if OS.mac?
    url "https://github.com/sethkor/s3kor/releases/download/0.0.11/s3kor_0.0.11_Darwin_amd64.tar.gz"
    sha256 "699f2cc36f1bc4d362b7ad9e717d2968ac41941d1f5c810c43bf9e8dc52ffe7b"
  elsif OS.linux?
  
    case RbConfig::CONFIG["host_cpu"]
    when "aarch64"
      url "https://github.com/sethkor/s3kor/releases/download/0.0.11/s3kor_0.0.11_Linux_arm64.tar.gz"
      sha256 "cd0312c7ff70ff9715b9c48dcf04ede93d923a679c0bc5a0c815a5d0f2abbfe6"   
    when "x86_64" 
      url "https://github.com/sethkor/s3kor/releases/download/0.0.11/s3kor_0.0.0.0.11_Linux_amd64.tar.gz"
      sha256 "d365e2b9ca2486a9cc0ae8a55dc69de88bec3535b0fa17e66e8baa43170b1cf2"
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
