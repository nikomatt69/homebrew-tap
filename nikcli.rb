# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-17T00:58:48.504Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.289.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.289.0/nikcli-ai-darwin-x64.zip"
      sha256 "87194f5c5737bf61b5a4ef03d11885087dc30c96c090d9359aaee355e4773e5b"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.289.0/nikcli-ai-darwin-arm64.zip"
      sha256 "5afd6cf7ade292b306310fb995dd4851d95c7bda459d10a58e4beb13f3fa8d9d"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.289.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "9a1a1b7afdd64751522788c2fb1c5235aab74db20699609c2dc48ecbbc2d309f"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.289.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "c00aed5cb429509f271bcf3ff2dc6c16b64a86b36698c6f97ed852684f49f888"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

