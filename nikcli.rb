# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-17T16:15:09.834Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.292.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.292.0/nikcli-ai-darwin-x64.zip"
      sha256 "e57e1467cf8de57b4fedc81e56d6903b2f6006a3de55266f64882fa9da5d4361"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.292.0/nikcli-ai-darwin-arm64.zip"
      sha256 "0fe2b2a7f4f97f2b03e7d3919250dd13b0b5f47e42d1bee3b5cd7720f4f19e5a"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.292.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "bb3fd9ece448915aba4f1654d17b399a9af3ae20ee4432dca6a06516d700bea4"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.292.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "a4a1ae33af4c8a288752e89b5a8c67ddf2480ed17ed0ebf4d0b147df95af81b1"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

