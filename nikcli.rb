# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-05T23:29:53.619Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.241.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.241.0/nikcli-ai-darwin-x64.zip"
      sha256 "3f5cbb2ec006d05d14acd33b6211e5393a9aa959d34017c24b00bb2030466e03"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.241.0/nikcli-ai-darwin-arm64.zip"
      sha256 "98cb57fc581ed7da327092963275b335c7d8a6d301b757a030ee155533402457"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.241.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "b0180dad2b8e9e419475e086311e369a0b1edd828679ddae1616b43ba8b38ee6"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.241.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "46c044fbccab9c830f2a1d6faff2e459768bc12e03ac09a4ae7a10c80ad8eea2"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

