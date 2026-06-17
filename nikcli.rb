# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-17T22:08:38.762Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.85.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.85.0/nikcli-ai-darwin-x64.zip"
      sha256 "ce1c2b797bec936f6de0c1bd783739d27975237b2cd68edaca7daafd9ca4ab63"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.85.0/nikcli-ai-darwin-arm64.zip"
      sha256 "85ad406b455ac81f7ed2df5e683d9055493cad91af4eec99ec3872ee67849848"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.85.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "0b99b18f75aa4ac0b187f339cbb9bb8c0fcf175bb1f58168db6098b59e3f6935"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.85.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "948473f2baf73503a3a22d1a67656bcfa162f95a1bd21c65dece3ae37a789c32"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

