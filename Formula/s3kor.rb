class S3kor < Formula
  desc "Fast Async S3 tools written in Go"
  homepage "https://github.com/sethkor/s3kor"
  version "0.0.19"

  if OS.mac?
    url "https://github.com/sethkor/s3kor/releases/download/0.0.19/s3kor_0.0.19_Darwin_amd64.tar.gz"
    sha256 "6232ab22c4554fec59dedd21ba12524b50127e911c386069e1d7a1fbc297c1b1"
  elsif OS.linux?
  
    case RbConfig::CONFIG["host_cpu"]
    when "aarch64"
      url "https://github.com/sethkor/s3kor/releases/download/0.0.19/s3kor_0.0.19_Linux_arm64.tar.gz"
      sha256 "1c3aac9475365eec1cad73d2d9b06540e20c27ea517eca9f499e17ee94fe9ff1"   
    when "x86_64" 
      url "https://github.com/sethkor/s3kor/releases/download/0.0.19/s3kor_0.0.19_Linux_amd64.tar.gz"
      sha256 "0ce08766f3e398e30758564d3bcf81f84515ed4913e79722def005b23d5cf5fc"
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
