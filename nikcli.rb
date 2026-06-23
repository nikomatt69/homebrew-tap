# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-23T21:57:55.727Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.109.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.109.0/nikcli-ai-darwin-x64.zip"
      sha256 "ed2781b7b6f6eb115b840528d5ab19f3686e8c6a2b084bcb78aba3376c38522a"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.109.0/nikcli-ai-darwin-arm64.zip"
      sha256 "554e3fe27b5bb169d97a767ae83c586cd5d2124812878b6e54607c3a9093ed4f"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.109.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "1d9ef92c04353b674594f3fc580aabdac2b3831948301c266a8d742e48015af3"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.109.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "951da71903a5336dbcfcd30ad5e73a8b7dc50fa599c929cd8d6598f690ac4df5"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

