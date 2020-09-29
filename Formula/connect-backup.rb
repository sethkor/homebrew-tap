# This file was generated by GoReleaser. DO NOT EDIT.
class ConnectBackup < Formula
  desc "Fast S3 Tools built in GoLang Using Multiparts and Concurrency"
  homepage ""
  version "0.0.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/sethkor/connect-backup/releases/download/v0.0.1/connect-backup_0.0.1_Darwin_amd64.tar.gz"
    sha256 "a665e583fe67318423749ec8d7b892ab6ea181f3c56c97d6e483425af5a43eeb"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/sethkor/connect-backup/releases/download/v0.0.1/connect-backup_0.0.1_Linux_amd64.tar.gz"
      sha256 "f6d8513527f3bbba208ffb3d90eb0776bde9c29a4840541189938fa6d5dbc17d"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sethkor/connect-backup/releases/download/v0.0.1/connect-backup_0.0.1_Linux_arm64.tar.gz"
        sha256 "2f5d76b5819f23341feb748553644e6377df7cad06a6934efc3a25e0270d94b0"
      else
        url "https://github.com/sethkor/connect-backup/releases/download/v0.0.1/connect-backup_0.0.1_Linux_armv6.tar.gz"
        sha256 "cd7156a75ba6206f4a9b713a7a5481e10d9c7d287c7484df051bd6fa34f971d1"
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
