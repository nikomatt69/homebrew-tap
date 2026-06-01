# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-01T15:52:02.754Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.42.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.42.0/nikcli-ai-darwin-x64.zip"
      sha256 "d3a1da9f9ca3ecb3c4cb5f6a20e76c5e290fd3a4596b66c6145b081f02a176fc"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.42.0/nikcli-ai-darwin-arm64.zip"
      sha256 "010a29c0ff54c5e527f2a66b41a68cd493bd36d584b41476017dbbefd62b7577"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.42.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "472cd8f1eaf9d24c03f8df0bf1547469de922d35ddb0a24ff53809dbe44f6946"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.42.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "dbb6b94b1e06a0a784d396009b8c4d31ea585c59b08106e58d6fe5116ee3ae10"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

