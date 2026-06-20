# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-20T13:19:14.889Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.90.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.90.0/nikcli-ai-darwin-x64.zip"
      sha256 "9c415aadc47ece2736dc911447ef32ddd4f5364f66ae77b8c68f6412b901d793"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.90.0/nikcli-ai-darwin-arm64.zip"
      sha256 "ca2f26dd21c8276b2db982f3f7ce0a538a1d78180f666bb669896c68301a9aaa"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.90.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "35f52ed8d60b9735a6c74098591166b7875e5dc89b91e5d9078dbcc9125c3e6e"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.90.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "7cee0f442b5b25994587a2c07fc1aa507ac668c149132535211a0bf26b353523"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

