class S3kor < Formula
  desc "Fast Async S3 tools"
  homepage "https://github.com/sethkor/s3kor/"
  version "0.0.2"

  if OS.mac?
    url "https://github.com/sethkor/s3kor/releases/download/0.0.2/s3kor_0.0.2_Darwin_amd64.tar.gz"
    sha256 "05a77453ed85f79b3e82d4c8a5a39d4d2d84e3fbf08efb9947dee6b5e19d948f"
  elsif OS.linux?
  
    case RbConfig::CONFIG["host_cpu"]
    when "aarch64"
      url "https://github.com/sethkor/s3kor/releases/download/0.0.2/s3kor_0.0.2_Linux_arm64.tar.gz"
      sha256 "5ed8469adf00735012f17eae70db49dae6adb9334a701707d7859ba69a8aa6de"   
    when "x86_64" 
      url "https://github.com/sethkor/s3kor/releases/download/0.0.2/s3kor_0.0.2_Linux_amd64.tar.gz"
      sha256 "f9107a6007ff0f2502281e7d4cb84257f356e20c17f032b7419843caaaaafb65"
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
