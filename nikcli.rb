# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-14T02:56:14.378Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.162.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.162.0/nikcli-ai-darwin-x64.zip"
      sha256 "05f5643d9b06fbfcd7edc9e00c930b7f90abf5e8b6fd8a844860c68844e5de9d"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.162.0/nikcli-ai-darwin-arm64.zip"
      sha256 "d2f40f424d801dde782c2bc9aedb233de37077d8e0a264ab1da85f57f0fbaf0e"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.162.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "b0dea1955b895142082601ce525d17aeec4dbf9a1bf55f037c25c49676b092a9"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.162.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "3a66bf193093b3ea6e6e7ba9d306fc00d014f18a7923c97235eb14edd06ecca6"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

