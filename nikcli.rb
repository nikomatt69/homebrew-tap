# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-10-03T18:58:21.131Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.424.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.424.0/nikcli-ai-darwin-x64.zip"
      sha256 "a7b88a8912383511d18c7707a8b3ad2e840b00d4e8f8ec0e481c16ca3a9b4b9e"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.424.0/nikcli-ai-darwin-arm64.zip"
      sha256 "ad1858a09c881243de0a601353f8db257bfbb9f6adc496f923bd5f621a6491fb"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.424.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "e052e4b902704aaf78b35348cc94f2987e401ac058e5e959d0c21ee5e51a28dc"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.424.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "2e39ef192d42962333d3526fa04ac0495f22fe5d7567e4981afbbee469913a9a"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

