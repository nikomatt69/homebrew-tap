# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-25T22:05:59.314Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.121.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.121.0/nikcli-ai-darwin-x64.zip"
      sha256 "1a62661b17acb897265507f916d577d73901b63b4c743259d1359349dea7aa2b"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.121.0/nikcli-ai-darwin-arm64.zip"
      sha256 "59083b662451cde283e12a4e4330d0bea6060ef251d27371daa4f7fd86d5795f"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.121.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "f86da0a7703ae13ec20c3a0ef437b2e116701cd8fcb2e013f2a2b7a84731d9a8"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.121.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "0c8932e65dfc6eb4c6db64b6e83db066a68d6b345ffa0c4c51ac9b9552a59f79"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

