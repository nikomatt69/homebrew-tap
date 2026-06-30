# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-30T00:53:07.614Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.133.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.133.0/nikcli-ai-darwin-x64.zip"
      sha256 "b039c0b231aedf2aac0e7429cc37b481d2934079c039f6da07bb24bd8fe8f054"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.133.0/nikcli-ai-darwin-arm64.zip"
      sha256 "8286dcd3c0dae1d87efb33b5e877ec7f7bf8c208ee50a6b57da442da5594f286"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.133.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "bb3ba9a83bf3b5b3a85e3dc74d850575eabe7e402e4de1fde4e6e74bd6b26a64"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.133.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "7d815f0d3955edda8689e8c22c73adee03e0df9c7a86f725e429c80a3fa91ad7"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

