class S3kor < Formula
  desc "Fast Async S3 tools"
  homepage "https://github.com/sethkor/s3kor/"
  version "0.0.7"

  if OS.mac?
    url "https://github.com/sethkor/s3kor/releases/download/0.0.7/s3kor_0.0.7_Darwin_amd64.tar.gz"
    sha256 "2f1d463310bda6e675c0c246a5e2e82eadb64b1675c9385994d632ff9911b84e"
  elsif OS.linux?
  
    case RbConfig::CONFIG["host_cpu"]
    when "aarch64"
      url "https://github.com/sethkor/s3kor/releases/download/0.0.7/s3kor_0.0.7_Linux_arm64.tar.gz"
      sha256 "c7a14d4bcbf88774adbbe39494bf324ca4ed6ff59ddc30841283e59d062fcb20"   
    when "x86_64" 
      url "https://github.com/sethkor/s3kor/releases/download/0.0.7/s3kor_0.0.7_Linux_amd64.tar.gz"
      sha256 "6abe57dbf076bb2cde031cebc42b9a121bd503908759d26d96c4447e7c4dd640"
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
