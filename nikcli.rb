# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-16T15:51:39.402Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.359.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.359.0/nikcli-ai-darwin-x64.zip"
      sha256 "227acb569d4805726ea5599c6f1c5edcca877acd141938e65be8b16ecff6996f"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.359.0/nikcli-ai-darwin-arm64.zip"
      sha256 "19928aac29e61fe13c2cb40485f63d5c669ed2be5d271436456dfe204a8a714f"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.359.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "9d735cfa0048c5a39c3a2974ad9fd2ef2870abe351fa24882e8f50b2aefc782a"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.359.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "bc0d995d9dcba80b593ed22005c9146fb6e8037daf2bdb676976e83a4f7a2276"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

