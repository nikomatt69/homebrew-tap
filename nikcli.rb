# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-21T22:59:53.482Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.96.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.96.0/nikcli-ai-darwin-x64.zip"
      sha256 "c5edba45f543813f7220665f3b9e29355e6d02dc792e171d08cb2a93f106ff03"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.96.0/nikcli-ai-darwin-arm64.zip"
      sha256 "494b07bbbe1aec7bce2595d0daf1b0a3ff61a98cfb43e7871624f27fec12627a"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.96.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "ed4054a0e8780f26d604eef49adc2f755b8c6417b1099d477604aa407ef0ac77"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.96.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "0b963cbdaa6fd5eb16b92a77972f66a2fd814aaa6b5ca48ed7529ae6c706723e"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

