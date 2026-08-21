# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-21T04:33:43.658Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.304.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.304.0/nikcli-ai-darwin-x64.zip"
      sha256 "b0c47283d1b04262c82c05bbf781585532962acf1a49c8dafa2b15d3fa3544bf"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.304.0/nikcli-ai-darwin-arm64.zip"
      sha256 "38fd66e2dfc0cb68ba305c8586fbda6bf169faab298dd2d3d4bdaf02b1e54cc8"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.304.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "bde3323d80388f18c9108b61da8b2f9a1032c285dd0132e96da1ff2b55bbb246"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.304.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "fd7276d1cfe3beb7b376f64e6b7d7072561b4830e1ac6cac6e758d8617bb9d39"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

