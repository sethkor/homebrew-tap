class S3kor < Formula
  desc "Fast Async S3 tools"
  homepage "https://github.com/sethkor/s3kor/"
  version "0.0.3"

  if OS.mac?
    url "https://github.com/sethkor/s3kor/releases/download/0.0.3/s3kor_0.0.3_Darwin_amd64.tar.gz"
    sha256 "5a128b7d1c15e268369f2863da07f1a1a9272cf6a9faba611613909d6a8f70b3"
  elsif OS.linux?
  
    case RbConfig::CONFIG["host_cpu"]
    when "aarch64"
      url "https://github.com/sethkor/s3kor/releases/download/0.0.3/s3kor_0.0.3_Linux_arm64.tar.gz"
      sha256 "5ed8469adf00735012f17eae70db49dae6adb9334a701707d7859ba69a8aa6de"   
    when "x86_64" 
      url "https://github.com/sethkor/s3kor/releases/download/0.0.3/s3kor_0.0.3_Linux_amd64.tar.gz"
      sha256 "0a6826c1e39fd5f5d5eaeff8837ea2fb464500a00ce6ffae2b17172135a9ece9"
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
