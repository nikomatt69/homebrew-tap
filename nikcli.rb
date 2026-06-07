# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-07T20:28:54.878Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.56.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.56.0/nikcli-ai-darwin-x64.zip"
      sha256 "8d4844d00cc8dd350e821a9b6f11878ddfb006eb9a362e6e3ec8ecc53205a46b"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.56.0/nikcli-ai-darwin-arm64.zip"
      sha256 "c7d3abbb1c9d6f8900ff6fda2fd84158f536edf71cb959c8ecb780de99b77513"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.56.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "94083d4d8ccc9a9634095ebf152d38b7ed87316e52475062948004a8d85e96f0"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.56.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "527844d2060def3cee3738ba4f2fb585c72c7e42c128a7e78ebaf80d1ef59e93"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

