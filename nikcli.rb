# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-07T09:48:05.505Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.250.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.250.0/nikcli-ai-darwin-x64.zip"
      sha256 "20bb5129397a9f175dbdeb89c6ee18ece6994a28d3025ac593fca742366149f4"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.250.0/nikcli-ai-darwin-arm64.zip"
      sha256 "8edeafc34864b594a7932e2e431ad2d5be1142fcdf7218e5ffce58ff0fdbaf6d"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.250.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "f171fddfab44ed82ced2f628ff01469a314fec4452dbd2418922d1adc03bb984"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.250.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "d078705a0dab51664f1c35076867c5d5e66b1509e11654a8abdc2bd44bab3b07"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

