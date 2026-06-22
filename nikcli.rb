# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-22T23:43:47.298Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.108.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.108.0/nikcli-ai-darwin-x64.zip"
      sha256 "dbb20e8bcfa7b679a9a13100709a72360869edfdb0505c5ad9f79265676a1df9"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.108.0/nikcli-ai-darwin-arm64.zip"
      sha256 "bf1c7523e6c66265b66d9ea47ad9120d085b8ed91d122178e3232636412dc5a5"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.108.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "3b9d497095520e608b611eeb91a7eb87a2ed41096bcad83d641fbd0133c627ee"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.108.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "2df5aa4f4ff2b129d2e488b9d215364e501be25b8912c0e36f930044607823c5"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

