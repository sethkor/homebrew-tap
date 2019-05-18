class S3kor < Formula
  desc "Fast Async S3 tools"
  homepage "https://github.com/sethkor/s3kor/"
  version "0.0.4"

  if OS.mac?
    url "https://github.com/sethkor/s3kor/releases/download/0.0.4/s3kor_0.0.4_Darwin_amd64.tar.gz"
    sha256 "d7084010290ad0310b59125fa1451b39571384e666bcbe1e2b004f848cf35868"
  elsif OS.linux?
  
    case RbConfig::CONFIG["host_cpu"]
    when "aarch64"
      url "https://github.com/sethkor/s3kor/releases/download/0.0.4/s3kor_0.0.4_Linux_arm64.tar.gz"
      sha256 "0f85ef0b89bb0455def453b3e969b0b0d780279d63aa2a1049740ded84bd1259"   
    when "x86_64" 
      url "https://github.com/sethkor/s3kor/releases/download/0.0.4/s3kor_0.0.4_Linux_amd64.tar.gz"
      sha256 "ca9141b768d5d80f47795bb3c638dc3030e4496bbe1501fdad7f71265f6c9972"
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
