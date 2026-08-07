# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-07T19:05:16.630Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.257.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.257.0/nikcli-ai-darwin-x64.zip"
      sha256 "b9d6e616786e6c3152df902a76f6089b7f9752133913bc0f68622f5b60395cde"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.257.0/nikcli-ai-darwin-arm64.zip"
      sha256 "8931cc297dda40c1abfd3ba64e05255124e5865c079b23db35e37bbc106ec905"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.257.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "409898039fcd6ed2ad896acb9d371334b22a76fc31e73fd7a8d97bc2b469cf82"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.257.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "b7c55952add377fcd6d776da4cf657b6b1cfa1f8e6ebb75a285ab90673713cc2"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

