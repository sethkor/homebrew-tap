# This file was generated by GoReleaser. DO NOT EDIT.
class ConnectBackup < Formula
  desc "Fast S3 Tools built in GoLang Using Multiparts and Concurrency"
  homepage ""
  version "0.0.15"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/sethkor/connect-backup/releases/download/v0.0.15/connect-backup_0.0.15_Darwin_amd64.tar.gz"
    sha256 "1e00f7fdf4e8d506983bd091e9834ea559775524e16b7254db2c8bc81de0356f"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/sethkor/connect-backup/releases/download/v0.0.15/connect-backup_0.0.15_Linux_amd64.tar.gz"
      sha256 "9611f8f2dcf5895c71923abc8b8c0699a9ad96c1c59c3c9e679667b38807d935"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sethkor/connect-backup/releases/download/v0.0.15/connect-backup_0.0.15_Linux_arm64.tar.gz"
        sha256 "6043b620a19d564a6b412cdedd0600afb2b9b509f038b6441183588e9a3de9df"
      else
        url "https://github.com/sethkor/connect-backup/releases/download/v0.0.15/connect-backup_0.0.15_Linux_armv6.tar.gz"
        sha256 "a9dbb83b4c99596085bff2c46e4ae8c1db4d06eacfd58644b8c04c4f3f7625be"
      end
    end
  end

  def install
    bin.install "connect-backup"
  end

  test do
    system "#{bin}/program --version"
  end
end
