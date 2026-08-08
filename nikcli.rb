# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-08T02:05:34.901Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.262.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.262.0/nikcli-ai-darwin-x64.zip"
      sha256 "6e70ebe2da7ae2edd81a00d9114f486eede14e5056ddff13ac418555070031fc"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.262.0/nikcli-ai-darwin-arm64.zip"
      sha256 "f00f4455126a58556fe4c6d76f94e5c6e1a0a5c6a1bbea23d7623703d5f36786"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.262.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "a2eab4ac3ec1d5deb8b7fe60d8cf7744c989bdb39aceb598bbdda8a8b8ad9451"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.262.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "5bf94f016ac8d48403765f695b5f1aa1b5101b154b15ec7d273db62867d4e87b"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

