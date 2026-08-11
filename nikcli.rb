# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-11T16:43:20.013Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.266.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.266.0/nikcli-ai-darwin-x64.zip"
      sha256 "c45f893cbd7350c2b8c3b11462b80500e86b48e4fbf954b3460c83ffa9f2a1e3"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.266.0/nikcli-ai-darwin-arm64.zip"
      sha256 "ed12a642b51c1454ff52e4b0aa0c721bb967496e231631de654e342a81f54ca6"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.266.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "8b19804d82b4e4bf6544958114820b95d3d5f3d6033419f6c96fd39528f6ae61"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.266.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "f5fbc69564df9759c184cbb899a91a540e880898dc9cc40da1f1ee758467ca15"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

