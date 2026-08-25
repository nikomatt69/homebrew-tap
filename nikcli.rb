# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-25T19:28:11.724Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.315.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.315.0/nikcli-ai-darwin-x64.zip"
      sha256 "879b045e8a0e2c59fbb058af8cb85458daca23164c5910e0f020e16a7c04de0d"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.315.0/nikcli-ai-darwin-arm64.zip"
      sha256 "959e3d2b80d4f55c1ea72c9ff7884cc02ec3c9b32dcd0e28037690795748392f"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.315.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "fbb6ff20a0248d519b732d5710d5dddfa625d1957caa941865608abf351ce73d"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.315.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "1675aa41d88a42467aba146be772b0d6b1b9341cf8339903c4fe5d260be85349"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

