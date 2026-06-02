# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-02T22:19:22.342Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.49.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.49.0/nikcli-ai-darwin-x64.zip"
      sha256 "f34c66326e007b96324f4d1485b4df5d1878fb5cafe16f987010dc36db02c55e"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.49.0/nikcli-ai-darwin-arm64.zip"
      sha256 "40d3c40138a2d2e1075bb1bf3a5c3408c3383545b4f205ef1b1ef3f6680295ae"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.49.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "6b14306cea80a33631adfd26069804a78bfc15ebfeb99e8d3221a3de74654664"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.49.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "4837714c12b6a71dd69342cc5859f9445d359b1ed863163de266ee5b4c9e248d"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

