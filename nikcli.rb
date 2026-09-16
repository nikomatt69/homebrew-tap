# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-16T16:46:18.899Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.360.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.360.0/nikcli-ai-darwin-x64.zip"
      sha256 "8fd65c8cf6c3fbd0c8c25a04b16eb43f8e22e79bbab430f8bbd435c33f308ee5"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.360.0/nikcli-ai-darwin-arm64.zip"
      sha256 "7de034fca7d7183678ad28db7d669f6d04fa9743d828d47e583b0fff461946c5"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.360.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "b1718209296ba65a86e625565b5c52ca1b3921b936a535b0d7a5893ef85083f0"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.360.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "6672c965e6c05c9f618ab6ec91c005547a6f71db4f5c36988b3a4b856c03cc32"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

