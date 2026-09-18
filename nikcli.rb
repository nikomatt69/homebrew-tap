# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-18T16:04:09.434Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.372.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.372.0/nikcli-ai-darwin-x64.zip"
      sha256 "08cc70bccffba3a2687b90c19b8e99c36c4f6412dfb740268eee8701a7c24773"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.372.0/nikcli-ai-darwin-arm64.zip"
      sha256 "cdd1fc954ba73c2b537abc4277ef997f51630fc41fcbfb4955795cb11a9c010d"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.372.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "9dac9b3bfcb088e36266b1cd76e6b712be40ea6e0aeb2b3feb83a7abe3f02904"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.372.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "27f8ddec8f696d3a27ead215aa47018ee87f19301b58a7c6e4dea2c4377ce14c"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

