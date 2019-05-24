class S3kor < Formula
  desc "Fast Async S3 tools"
  homepage "https://github.com/sethkor/s3kor/"
  version "0.0.5"

  if OS.mac?
    url "https://github.com/sethkor/s3kor/releases/download/0.0.5/s3kor_0.0.5_Darwin_amd64.tar.gz"
    sha256 "917f86fba85fc5b8d11428e1d4b250a8abb3c82dc4e756b6cfddf2e0efeeafc4"
  elsif OS.linux?
  
    case RbConfig::CONFIG["host_cpu"]
    when "aarch64"
      url "https://github.com/sethkor/s3kor/releases/download/0.0.5/s3kor_0.0.5_Linux_arm64.tar.gz"
      sha256 "7c02e34f99ff5e13dfa57eaf25e4898192fe9b9f7016c19eb1c7f85d722e8c8e"   
    when "x86_64" 
      url "https://github.com/sethkor/s3kor/releases/download/0.0.5/s3kor_0.0.5_Linux_amd64.tar.gz"
      sha256 "917f86fba85fc5b8d11428e1d4b250a8abb3c82dc4e756b6cfddf2e0efeeafc4"
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
