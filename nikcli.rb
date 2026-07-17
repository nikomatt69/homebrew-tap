# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-17T15:44:16.793Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.173.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.173.0/nikcli-ai-darwin-x64.zip"
      sha256 "8a6b01752fbe91db373973d55bb5336fdf8c4af4bb499c1559c9a235169ea141"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.173.0/nikcli-ai-darwin-arm64.zip"
      sha256 "29fe2c1878f33849388de9ba8c99784b0a940398f93c881f4cfc24238c86df63"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.173.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "95114ce106f96fedfdc1e564f41d9e6b6827851fd98804fffc4dded78c539c03"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.173.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "9defff5b97c3ade122e4349dec56c9dc049f4771476ff8cbd052bc7c4be364f6"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

