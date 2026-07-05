# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-05T22:34:36.309Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.141.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.141.0/nikcli-ai-darwin-x64.zip"
      sha256 "d7f1d34cccce1b3ef286e228d63abd7c6d8c26de2616b744560bfefd65c39208"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.141.0/nikcli-ai-darwin-arm64.zip"
      sha256 "db2e5e34f6189a8bd60a218ddd93fa3f239197bbe6d139b85b7435184904bea5"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.141.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "d2e9650fe2bf91b4edeb1605e53dbd1e43b258916f168c9b1903a81809468d00"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.141.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "18be04b709061a3364d877b87fb8b982ea4687c697884cd42d02af3187a45bfc"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

