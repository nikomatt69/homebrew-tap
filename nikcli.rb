# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-27T21:22:03.254Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.123.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.123.0/nikcli-ai-darwin-x64.zip"
      sha256 "b432c91023e3d97ac3bc9a2b87ecb4f2c0eab0240b782d0031afe1e64f8d6489"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.123.0/nikcli-ai-darwin-arm64.zip"
      sha256 "48563b75849c978da58e1083660f42122c318f69584293b201fc6af14039d7f8"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.123.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "72f1d94a6c4203fca01c63071ccbb5d76e9feb5135b37c2411020eaf8de62068"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.123.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "36d932fb6572d00a35742a421ec01980c4c201c180321c10c5d78c4dde9aa5dd"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

