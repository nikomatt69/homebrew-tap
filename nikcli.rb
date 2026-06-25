# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-25T19:00:12.712Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.118.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.118.0/nikcli-ai-darwin-x64.zip"
      sha256 "7c0febb23df8fbb0eb718c3ae23e8a1f9cb82afaf50e5ee901c78a8f6e70f8a0"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.118.0/nikcli-ai-darwin-arm64.zip"
      sha256 "3c1c05a1f75569bc92b618ace2c369ebdcb31fd4376b4d6ea6ea5e00242b6047"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.118.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "7676d8d6ae164df18e3abd835e0df51422dd2b704522fd18acc8c206697ae158"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.118.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "57e3867419439771acbffc7bde222a5e773d4c7fb113ccc4b374c7d36950008a"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

