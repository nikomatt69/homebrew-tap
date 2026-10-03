# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-10-03T15:49:45.338Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.423.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.423.0/nikcli-ai-darwin-x64.zip"
      sha256 "30bfe0c82b34f2f6177b810325869fe4f1ab55d3cc21e2e1147d7a4472fe69c6"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.423.0/nikcli-ai-darwin-arm64.zip"
      sha256 "91c849d31b95a38d70428b8f2710735138e2ffb8177b647c69cb76b1205680ea"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.423.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "79348932bc79d4a657274157178c0241c81b776e054228ad89c312d0afb4327b"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.423.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "b979933c31a05f57bad0801e34197c9e1e3c13c659467495c026c43ab9f81b3d"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

