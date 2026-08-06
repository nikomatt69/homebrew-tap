# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-06T15:03:07.649Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.244.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.244.0/nikcli-ai-darwin-x64.zip"
      sha256 "a1b04790d97e14389970db7bb8a4e416511f42137b106477ae1486a8ee723a87"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.244.0/nikcli-ai-darwin-arm64.zip"
      sha256 "cabe62188f392b3dc634bb0da8ecdb6e547056e023a14a3778414d8c35de619a"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.244.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "ffc715cc9d2147d68f781d85e586a7c5a31e4be39bbe4444104ffe5a08f44234"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.244.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "5b9ca7bd28bd015bb4aab7bf51d6f499056a28d6db6d8d43bd28ff6d29ff9832"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

