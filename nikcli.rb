# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-22T22:53:15.035Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.193.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.193.0/nikcli-ai-darwin-x64.zip"
      sha256 "cb5feccc354b86b0cf3579fabd2106abccd6ebbda7f046fc693e37e73e7012da"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.193.0/nikcli-ai-darwin-arm64.zip"
      sha256 "fd9021ff0f3c0a5d8c43d2ccbcefaae2d2819d94030bbeb312a1c0866bbe9adc"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.193.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "0757ef2228165529c2e5728e04e3b9c1bec47b9f18f61e3cea1ecbb4f0b6fbd3"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.193.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "48d7be1f48439e998070e9833f95d570ee371695bf4d8cb1e9820f7d090d4164"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

