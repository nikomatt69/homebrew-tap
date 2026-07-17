# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-17T17:25:09.640Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.174.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.174.0/nikcli-ai-darwin-x64.zip"
      sha256 "cf614135ae84c8258bf801055b4fe204db706218e9d90a7391e4adbe8a0b5896"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.174.0/nikcli-ai-darwin-arm64.zip"
      sha256 "4d80f76ee15656b176213ec51eb95e8bb2be960624434d3f5ebb519b7a5d9c0f"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.174.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "1d0906dd68fe6971b66b57ef1912c743399222c68164e16d1942c7aaa840f78d"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.174.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "8555a518b7817d7d71d36d045aa13499b6ddd5ca59bef024e33c6b5f7503b05a"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

