# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ConnectBackup < Formula
  desc "Fast S3 Tools built in GoLang Using Multiparts and Concurrency"
  homepage ""
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sethkor/connect-backup/releases/download/v0.1.1/connect-backup_0.1.1_Darwin_arm64.tar.gz"
      sha256 "ecbc2067be8ba13d77f8966803d28b42aa9d35d18c99d854a5f6f0e40e5f6b8c"

      def install
        bin.install "connect-backup"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sethkor/connect-backup/releases/download/v0.1.1/connect-backup_0.1.1_Darwin_amd64.tar.gz"
      sha256 "0fa0444fbdb6389ca876fbde688744394bb168076ed98f734043ad59474f266d"

      def install
        bin.install "connect-backup"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sethkor/connect-backup/releases/download/v0.1.1/connect-backup_0.1.1_Linux_amd64.tar.gz"
      sha256 "35ab42de73fae44824a05af1b6788757f2baa84105d8e982fff44a28d89d9779"

      def install
        bin.install "connect-backup"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/sethkor/connect-backup/releases/download/v0.1.1/connect-backup_0.1.1_Linux_armv6.tar.gz"
      sha256 "a751d8800f89ece465c81e9bf3c0b1b3e138b3c46fceb76bdb891858e73b2c75"

      def install
        bin.install "connect-backup"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sethkor/connect-backup/releases/download/v0.1.1/connect-backup_0.1.1_Linux_arm64.tar.gz"
      sha256 "5610505d2b7c913dcc2c714b7fcb5ccc9786a67406e83986242d2add38a73e98"

      def install
        bin.install "connect-backup"
      end
    end
  end

  test do
    system "#{bin}/program --version"
  end
end
