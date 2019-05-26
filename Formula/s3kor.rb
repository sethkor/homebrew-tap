class S3kor < Formula
  desc "Fast Async S3 tools"
  homepage "https://github.com/sethkor/s3kor"
  version "0.0.9"

  if OS.mac?
    url "https://github.com/sethkor/s3kor/releases/download/0.0.9/s3kor_0.0.9_Darwin_amd64.tar.gz"
    sha256 "16ea454ad7baf44daf156c1bdd08a4cf0d9efbeadf0c093bde411d23e47a3eb0"
  elsif OS.linux?
  
    case RbConfig::CONFIG["host_cpu"]
    when "aarch64"
      url "https://github.com/sethkor/s3kor/releases/download/0.0.9/s3kor_0.0.9_Linux_arm64.tar.gz"
      sha256 "e37cfb3b7ea55bb78b294d377e48bb3061f130ebff2229da0021516af7dbad6f"   
    when "x86_64" 
      url "https://github.com/sethkor/s3kor/releases/download/0.0.9/s3kor_0.0.9_Linux_amd64.tar.gz"
      sha256 "b269037a8e7eca495b84b172d01fdfd4d382dda45c93b0854fe1f92aa7a11c04"
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
