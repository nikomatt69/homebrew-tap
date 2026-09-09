# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-09T20:44:14.585Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.334.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.334.0/nikcli-ai-darwin-x64.zip"
      sha256 "23fd2863eb43187b8ac1e1ecc33f083bb0c133d7a2ad1788ecec32101f9319bc"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.334.0/nikcli-ai-darwin-arm64.zip"
      sha256 "50cf7ecbb8938dbd0e385e0170a4254ebb22506e9a22f8981b9bcb4d1a79d42c"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.334.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "0ac16b9341112942a26dc91b85a30964c0804517fc52af0794df12e368ee5a49"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.334.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "d406f41a8ad5dcfaab0d5b2bc5d02f2eaddfb94e82a646e1cda5cd8764bcf78f"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

