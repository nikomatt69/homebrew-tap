# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-01T21:27:19.138Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.44.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.44.0/nikcli-ai-darwin-x64.zip"
      sha256 "a91ae6bc074bd77f2a6019d62c7d1c21905e53812dc13cc8ca6b4aefa58e66d6"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.44.0/nikcli-ai-darwin-arm64.zip"
      sha256 "15ce76eea6ec14611b26d1ef4638365f0e01d8386ea517390f696a762057370f"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.44.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "e65c7905fcaeda8865c36e98cb37417d31dd2a1c0752716f42046b9c5f60055a"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.44.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "c5d69df7feeb49b205eeed0ad958a45a4a6c41665bb6ca201a396ca1117bd549"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

