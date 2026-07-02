# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-02T02:15:20.328Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.134.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.134.0/nikcli-ai-darwin-x64.zip"
      sha256 "1eaffd33487a52f55629f3adcc2e21f79e69421d65a70678343565adca9cd818"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.134.0/nikcli-ai-darwin-arm64.zip"
      sha256 "7ba891bf7773516dd13ca3ecf71a3e4940bfd8b35db9dd2c62036e116eae261c"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.134.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "a9b1239941053276478081ac2568246d11a91bebf03ca684da13d7f1f7cc7045"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.134.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "38e87c72ebc2c103dd4ef96f238d366f94c5b549b55ba69d2ba37a97ccadeda0"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

