# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-19T01:01:54.431Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.179.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.179.0/nikcli-ai-darwin-x64.zip"
      sha256 "c01ad0e51d3d20f4a06807616448b6a01f5752c30c633424b3198f9ef1a9a8c0"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.179.0/nikcli-ai-darwin-arm64.zip"
      sha256 "6099fc41a2d41e28c59885db2ce9ce1a276b5e8c84a0266aab72a05365302eac"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.179.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "8143b5a4cd2266c6f1fbd23ba7d01400c2019649249e41746c901e5c3a6ff7c3"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.179.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "dbb3add413377e030e38d95a6f8f55d604602de490c07f86c64f99ceef74cf5a"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

