# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-01T20:35:41.218Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.43.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.43.0/nikcli-ai-darwin-x64.zip"
      sha256 "39dc7a808c8c00f6e86a19d80e45a0fdcac1a69a27dc64e592a07b00230904e1"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.43.0/nikcli-ai-darwin-arm64.zip"
      sha256 "adf0aae5f1570d8acd83837eff011af00e75a3d64467cd5f9a15e510c7ec03a9"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.43.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "376ea1cf58b82a87288163e3bc09435adb4f27627e98edd50264dbb96a277149"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.43.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "caa255e9231af07c3ef3c41b151085c2981be227500d7e9dc4a95d8379488bd6"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

