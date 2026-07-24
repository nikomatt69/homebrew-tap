# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-24T22:47:38.154Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.203.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.203.0/nikcli-ai-darwin-x64.zip"
      sha256 "12f26951a4b737df3a9743b3afbc005ff438f6323ac2fa42ae1b5dfa1c0c1c4f"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.203.0/nikcli-ai-darwin-arm64.zip"
      sha256 "de3f6cf3a3e7f0b7830ee64e463dcbffbef641f817985afef1f61f45e86dde2b"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.203.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "e9ed8e171d679f345c51b1add9ad7ab98dea071896f8e6d15b31835339271ded"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.203.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "79931b07f23238e28803d167d13d64751227a0ff1b541f706ddc4eed0d14e581"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

