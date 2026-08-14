# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-14T02:33:54.618Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.283.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.283.0/nikcli-ai-darwin-x64.zip"
      sha256 "c5893ead72a4ecb8d53232bff2c0e3aeaae73e3e5723f8598faa45b80cef64ac"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.283.0/nikcli-ai-darwin-arm64.zip"
      sha256 "a463558643d0e69aa3a60ce2c5df40b76df567839cff944972e9a81c22b4a848"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.283.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "a016134e6851d3dc892e29ae1b7eab0c298ea82d969188fb5b6876cfe08b2ad9"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.283.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "769546a5ea4977f843f8763bf9840c265916783e6c5c0b5706e816d098f41225"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

