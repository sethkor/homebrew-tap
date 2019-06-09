class S3kor < Formula
  desc "Fast Async S3 tools written in Go"
  homepage "https://github.com/sethkor/s3kor"
  version "0.0.15"

  if OS.mac?
    url "https://github.com/sethkor/s3kor/releases/download/0.0.15/s3kor_0.0.15_Darwin_amd64.tar.gz"
    sha256 "259d477329ea59a6333a909eeab5725c189d6b72fec9055ec5f55c13cd373da5"
  elsif OS.linux?
  
    case RbConfig::CONFIG["host_cpu"]
    when "aarch64"
      url "https://github.com/sethkor/s3kor/releases/download/0.0.15/s3kor_0.0.15_Linux_arm64.tar.gz"
      sha256 "d0ddf79778b8dc46bfa302a6e8bcc25231d8ee935c97ecf071efefc65b7f9abd"   
    when "x86_64" 
      url "https://github.com/sethkor/s3kor/releases/download/0.0.15/s3kor_0.0.15_Linux_amd64.tar.gz"
      sha256 "d1d25f6ac9af7c56188375b718ad15e814daebcf57cdccd139117d7d514e22a6"
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
