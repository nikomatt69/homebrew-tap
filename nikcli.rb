# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-30T02:30:56.820Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.415.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.415.0/nikcli-ai-darwin-x64.zip"
      sha256 "9dbae12c039d959a05ff9f60bfcfe7308c9f942e29636796577b7cdca7ebcb5f"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.415.0/nikcli-ai-darwin-arm64.zip"
      sha256 "634d4aa576dd341ab73405fe2638f4da46053f3caa9640e93973c172bf324b79"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.415.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "9c2c633a0eff27b46f0127de92ab4519637985b6cb68a977a4a75a62504d2c5e"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.415.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "13fee47dd1b61d778c753e42333f6b013b85f1f2b281294e1bc548408b0c0b43"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

