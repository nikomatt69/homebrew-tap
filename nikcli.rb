# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-02T20:37:29.253Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.47.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.47.0/nikcli-ai-darwin-x64.zip"
      sha256 "fb7d58f33b58aadb09517353c98dc6c4d4c2cd84f7d6a940243ad3e6f4f139be"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.47.0/nikcli-ai-darwin-arm64.zip"
      sha256 "e99d473b02a1e3f5f2690bc9873ee93ab2a7c9c98615f86b0d376a923b2fc213"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.47.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "ba3cd63f24fdd4dd1f504bff165a3701845801331137281186d2cd11b25c0980"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.47.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "c4a21a2c7de6aab2603bc71b17f8547122caa34b616e930e20bf544af5504f67"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

