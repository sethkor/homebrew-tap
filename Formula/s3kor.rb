class S3kor < Formula
  desc "Fast Async S3 tools"
  homepage "https://github.com/sethkor/s3kor"
  version "0.0.10"

  if OS.mac?
    url "https://github.com/sethkor/s3kor/releases/download/0.0.10/s3kor_0.0.10_Darwin_amd64.tar.gz"
    sha256 "25d7994b3d88eefdd946be758160248a92b608a010f696dacb57903e7ae60a69"
  elsif OS.linux?
  
    case RbConfig::CONFIG["host_cpu"]
    when "aarch64"
      url "https://github.com/sethkor/s3kor/releases/download/0.0.10/s3kor_0.0.10_Linux_arm64.tar.gz"
      sha256 "bbad835b2f52a3b053b0bc1653be6411ad29450fefa638190b3d4e4a758ff8ff"   
    when "x86_64" 
      url "https://github.com/sethkor/s3kor/releases/download/0.0.10/s3kor_0.0.0.0.10_Linux_amd64.tar.gz"
      sha256 "bf0cd979317d3843a308739dc28dffbd828d747fd08b4b6017e593d73b11cbd3"
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
