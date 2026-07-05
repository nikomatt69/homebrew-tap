# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-05T23:41:27.108Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.142.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.142.0/nikcli-ai-darwin-x64.zip"
      sha256 "859a0ce825356f8dcc490e1f38eb550706fa092d31de2604db69bec4f9e0e609"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.142.0/nikcli-ai-darwin-arm64.zip"
      sha256 "b10788bfd80085446eeebcf3f8f245b9e580730b004b5a5d8c50488a84a562b6"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.142.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "1f16787077351517df3cf71cb70b5b0869fd8c5b9212b44e3672b970010de7f2"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.142.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "16f11b98eb945efffb3efc71a835df9eb9889acacef54ac54c92d6d1ff73d376"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

