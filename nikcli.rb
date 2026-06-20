# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-20T14:44:13.661Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.91.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.91.0/nikcli-ai-darwin-x64.zip"
      sha256 "5dd004f167a0da5cba97d7897e5b43511d43e6e753b00c4cc11293c4cc6714ab"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.91.0/nikcli-ai-darwin-arm64.zip"
      sha256 "c25bd76d95bcb0a1e0298d7810b970c52dedb9b77a7ad19c5be37f1f6c1c9174"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.91.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "ea3ac9a285ecbaeeea7c0d0f9062a2e4a0601e9a4370a92def6ffa1684b6e271"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.91.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "e9494b93dcc911fc1a0dcf5cac0b63bdfe8a37d48c5a677c6108f2cec3dc7b8b"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

