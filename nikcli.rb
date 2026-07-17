# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-17T14:42:04.463Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.172.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.172.0/nikcli-ai-darwin-x64.zip"
      sha256 "35aecc74fed67f97cba248f49ca1259baf7bdb06c161838d6424b57d7780983f"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.172.0/nikcli-ai-darwin-arm64.zip"
      sha256 "d59ac14aa13dd71a03d9392b1482ce7d14a39802c4b2e5de506af20f06a7450b"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.172.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "635d525244d85ec931a6149398d2bc06be0983ba7b3b6e3dca3d9160517275a0"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.172.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "f89553c808002956dceca900075dc4663cebc02bfbd725061c41792d9f95cac2"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

