# This file was generated by GoReleaser. DO NOT EDIT.
class ConnectBackup < Formula
  desc "Fast S3 Tools built in GoLang Using Multiparts and Concurrency"
  homepage ""
  version "0.0.21"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/sethkor/connect-backup/releases/download/v0.0.21/connect-backup_0.0.21_Darwin_amd64.tar.gz"
    sha256 "4186ecac247a6b492efb5c4687535beb734ba8c382a4c69b67158850320991a6"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/sethkor/connect-backup/releases/download/v0.0.21/connect-backup_0.0.21_Linux_amd64.tar.gz"
      sha256 "a100c1bd60e7e5d4c2e176bfcfd4c2493c301d6a1b26c3f15a51941788f077d6"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sethkor/connect-backup/releases/download/v0.0.21/connect-backup_0.0.21_Linux_arm64.tar.gz"
        sha256 "bf45fbff99454c440c1bab22831e8413185af92428f7ecd101e2fd596e7190c5"
      else
        url "https://github.com/sethkor/connect-backup/releases/download/v0.0.21/connect-backup_0.0.21_Linux_armv6.tar.gz"
        sha256 "02b92d242bb53148f469a81e8239bd2a243ce5113e994efa36a0899e95ab9642"
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
