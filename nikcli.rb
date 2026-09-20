# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-20T17:33:17.778Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.376.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.376.0/nikcli-ai-darwin-x64.zip"
      sha256 "3ed509d7d0628c4fb8370b6a6b1e7d0b071b57ce012c379bb88fd06f437d3af2"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.376.0/nikcli-ai-darwin-arm64.zip"
      sha256 "c811514c4f038c05574b966659c467b161788a1458d9190226a06d8cfdcd5f8a"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.376.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "6c3455627e7fc3a318165d97c1adb97f45ca8d8f4432950029a707c42448e270"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.376.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "6647a16e399cafa99f82baf7cad1384d9d31d7889cabc31d67ab6c38820395d3"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

