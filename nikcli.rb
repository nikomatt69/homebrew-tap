# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-10T23:44:51.592Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.340.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.340.0/nikcli-ai-darwin-x64.zip"
      sha256 "b0d4e979a3a3f0665fbfc83bb8a1dd03beacd1fff5e4a6e749ae61f66802d38c"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.340.0/nikcli-ai-darwin-arm64.zip"
      sha256 "6d7c2a25456097b507c84254db74ca49c4eadfc3300f040aaf8ef533452fe404"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.340.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "0c888f8c3793fd3df484022578f717fc76478295b15d812fd28f24c704450fcb"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.340.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "8642515a1279e53729ed4d147013ac552dd6dd70ca893df91c73ca4f87a97513"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

