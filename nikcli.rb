# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-09T01:49:39.079Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.58.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.58.0/nikcli-ai-darwin-x64.zip"
      sha256 "d32dc3569c2b90fd2df74ac2ebb8e5e94333a07f100e6ce082fdf0aa719f8c9b"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.58.0/nikcli-ai-darwin-arm64.zip"
      sha256 "4bfc89288e62ef60e796a6c20c053d5a1da03803a15e9274e49294cf670d0a91"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.58.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "f6cec031100d9cf10204e786be80073d89435341f12f6161172740329a95d74b"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.58.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "6c0683602edbd2a66a24f5602585f83a15b1163936906558c96217e0526e1883"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

