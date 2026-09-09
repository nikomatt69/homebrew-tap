# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-09T17:29:08.052Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.332.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.332.0/nikcli-ai-darwin-x64.zip"
      sha256 "6f8544003724f77a41edf62f6d06f39a1b698a97101561972075f5b9a14b2b76"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.332.0/nikcli-ai-darwin-arm64.zip"
      sha256 "161299a8cfbf40ab4596086bbc5482191b5c59bb8b842cd50cfaf0ee50a35f23"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.332.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "ee9d1f09077546e88b14ade04b56f01fba0d25f8e8d5485e10f72742260023bc"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.332.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "b1f5e7df8a9aa14afb196213bac87b3faea3a3ddc9931f82f58f4d535c6fbb35"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

