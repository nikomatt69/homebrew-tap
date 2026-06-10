# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-10T02:16:11.423Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.60.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.60.0/nikcli-ai-darwin-x64.zip"
      sha256 "caae4f46f093a750a6106026fa192b888ce727e8eb8a9961a2eeb74a2cee698b"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.60.0/nikcli-ai-darwin-arm64.zip"
      sha256 "2c69108855cb6325093083521498bb55fc41e1ad994417c9b5d833cfcf626c41"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.60.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "11fa23d4b948af1afe3c621c67309970c882dc2dacfd94955d4e5576c4ed405a"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.60.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "0da11321af05c6ab8c421a0d003fef53d04e972ddcca7d30760c6fc1310bce5e"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

