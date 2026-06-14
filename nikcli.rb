# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-14T11:47:14.569Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.75.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.75.0/nikcli-ai-darwin-x64.zip"
      sha256 "d9c30a421a1347219606f8aefa163ba9fd4ff10085e0bb9097309ae4d2780e9b"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.75.0/nikcli-ai-darwin-arm64.zip"
      sha256 "5f821e6a0d2f68ca3e25d63ee25a0cbea546270a029c72e491c5400064d5c696"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.75.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "4294562f336272a1a2bf4a1c5659e4cfe034bfb0d37c5404915c8f9ba153f4ec"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.75.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "2d64a05fdf76c48a2960b3e8427c07f55b88905ec4fea5b1baa87119668ec27b"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

