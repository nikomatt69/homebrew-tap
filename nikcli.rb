# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-01T14:08:47.849Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.40.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.40.0/nikcli-ai-darwin-x64.zip"
      sha256 "7c0f6949b0b7496b7a024d1b0f5fd8dbddda80899bc92208ea32a1145fe10c48"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.40.0/nikcli-ai-darwin-arm64.zip"
      sha256 "a10dbdcae658292eadd654099c1eb1d746c39727f4c02c6c10e21619acffe7a6"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.40.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "7286ca3c41b9b6eb681b6627469f6458d3e1bd640fa0aa643a14dd1ea90e4204"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.40.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "9209d57f8c219607f0772189cbda5b518cf828b41f7973d699afeb9d68b809b2"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

