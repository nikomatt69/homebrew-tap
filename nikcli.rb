# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-21T03:20:00.348Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.303.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.303.0/nikcli-ai-darwin-x64.zip"
      sha256 "bcbc56456f322e639171d3667e1f0574413c9c28641ebe9c9934759b5ba91da5"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.303.0/nikcli-ai-darwin-arm64.zip"
      sha256 "1d286a26fe71a4f986e3a45bedad44ae6f54f66fbb33b189a6228d997ea065ee"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.303.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "551da6b4959b098081ad1ca6a709a2a3ba4115fbe1c3e850d599c96f0cfb696e"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.303.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "695614fb08bacf3f3b6fd3a8a137ebbee8a29d2b7b08d780f472fea1e29f017a"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

