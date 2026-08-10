# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-10T22:25:40.360Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.264.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.264.0/nikcli-ai-darwin-x64.zip"
      sha256 "cbe8b271fa6e10107d02e258e18f5e723c31e28e23416bd21c7a0deec15d1328"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.264.0/nikcli-ai-darwin-arm64.zip"
      sha256 "efffb1ca5e5b24ef6e5bc6516573228f83d44fcb80d31112b9df1f63572d62fc"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.264.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "80fd591c0dc68d225a7d01dac7cfb3e02254d0257b8d2a244d1e5e6abef06d49"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.264.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "0ba37a228421a4c89be20011ee43a3d49d3877e167ec39a33fbefcaa4f43e5b0"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

