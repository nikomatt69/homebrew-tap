# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-11T16:21:13.443Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.156.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.156.0/nikcli-ai-darwin-x64.zip"
      sha256 "7c0d1414750cf6c70e8502057e2c8d9163364a8f63c838fe369aaf3c5f596acd"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.156.0/nikcli-ai-darwin-arm64.zip"
      sha256 "3953938ac39d692831a1431fe887c63cc44e77a8571a71789b870daccc7abf7d"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.156.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "88ce53d8677534cc6e026c130e4c6affa5a37818bf9e0a198d49e616a96a0720"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.156.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "dd74d167372629baa73cc83b208238156942baede17d65134764b45cb8e33a8c"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

