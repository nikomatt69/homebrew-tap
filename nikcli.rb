# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-18T13:55:35.305Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.370.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.370.0/nikcli-ai-darwin-x64.zip"
      sha256 "1a3e0a4c904e99e93a5888ebea23b1cd900eb0faa3fbd0bf0f518d8234747cea"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.370.0/nikcli-ai-darwin-arm64.zip"
      sha256 "eddd2e3f0abf753023752108a3c9dc305ee788985a6475fadeb9538f3b85fb68"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.370.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "9cb925056a60f6462287c03d09bc2b2c0faa252ac7b8635c6dfbeadfb1bc7a26"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.370.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "947d807c21cd003d960c18f886002a291f3fd39b9262e81ff8f77999770ef399"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

