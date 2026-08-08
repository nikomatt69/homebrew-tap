# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-08T01:14:29.193Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.261.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.261.0/nikcli-ai-darwin-x64.zip"
      sha256 "4f68d09a2f309d5810827787be80f02f3d77d2a61a1a2fe77b2df1b47175639d"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.261.0/nikcli-ai-darwin-arm64.zip"
      sha256 "f43a2d621043f4012347f26d2b186b95b32e4c9b1c0260b5cf7e58e274fecbb7"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.261.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "d4f87e46aacd2f8f417c5c0fa125cafb6048cc098c998bb0d17420b6d7bdfcdb"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.261.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "3ed3ea87dd5a3fadd7cbda7528c0028a408991f17f5b97d4b6e99bf047aa76b0"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

