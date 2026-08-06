# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-06T01:03:39.567Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.242.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.242.0/nikcli-ai-darwin-x64.zip"
      sha256 "d0c795bf5df71f2e4df94daafd417fdc90ee2ddac2cf3797b7f7379970cda2a2"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.242.0/nikcli-ai-darwin-arm64.zip"
      sha256 "65717a13309c02e37fde49c27d9243013a7333d925ff7b323f259135be0674c8"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.242.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "2c749c8c7e3ebaed267cdcb059d38e8f38e8d738b1f38417d4fa0a1c59749ecd"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.242.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "3c82ca1c418b4b3de71ea88cc0a185a25b37f0702506b0f24d29c8e2c303fc23"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

