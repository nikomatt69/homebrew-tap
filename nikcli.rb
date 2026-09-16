# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-16T18:06:57.486Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.361.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.361.0/nikcli-ai-darwin-x64.zip"
      sha256 "655e583d687e35f330c86a27821e5c840c57c9783b99028e137dc0a020dc2c83"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.361.0/nikcli-ai-darwin-arm64.zip"
      sha256 "ada58f73782c0e5fab20143cdfc1ce31f49fee1b72120072cc4ba530bcd603f8"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.361.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "ac7a55acbf52b0741ffc1d952a498c649b4361e86df2067b570d69a398e3566a"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.361.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "f7eb5bcbb8a899f491747af8054cf87ff54ddc3fdb80c661d05e380a0bbb02ad"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

