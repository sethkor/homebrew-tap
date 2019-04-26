class S3kor < Formula
  desc "Fast Async S3 tools"
  homepage "https://github.com/sethkor/s3kor/"
  version "0.0.1"

  if OS.mac?
    url "https://github.com/sethkor/s3kor/releases/download/0.0.1/s3kor_0.0.1_Darwin_amd64.tar.gz"
    sha256 "28b880638080d222331a73e34f79d00cda2d08e94ff145c0fb5a1e522621d48c"
  elsif OS.linux?
  
    case RbConfig::CONFIG["host_cpu"]
    when "aarch64"
      url "https://github.com/sethkor/s3kor/releases/download/0.0.1/s3kor_0.0.1_Linux_arm64.tar.gz"
      sha256 "7b8cadd9a4b0c6f092bf65a4eb3d5cabb5be4552ea6cba87e6f5a0f5612ab326"   
    when "x86_64" 
      url "https://github.com/sethkor/s3kor/releases/download/0.0.1/s3kor_0.0.1_Linux_amd64.tar.gz"
      sha256 "8476bdf4d19e3aecd144da42d886149fb82a21c7e354757b8e87679da9d6b21e "
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
