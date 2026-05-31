# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-05-31T15:12:52.096Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.36.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.36.0/nikcli-ai-darwin-x64.zip"
      sha256 "3febb60e6d6f0a96180f6bb3c1d072e29f37374a0b0ec9353a88a36082cbecf6"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.36.0/nikcli-ai-darwin-arm64.zip"
      sha256 "1d426d61dbae74a001e84f0c3f15f5904aa8db3892e0a74e891a6b571d631b63"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.36.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "255ba44be7cc492b0a0a8dcf77aa5f74115ea4e015f79e2e3ac88c022c7e9866"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.36.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "1538d3749353c08b11a653fd4bf6e041d753298670b99cde2648d2f331110ebb"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

