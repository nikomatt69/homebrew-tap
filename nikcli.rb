# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-05-24T23:24:24.519Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.27.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.27.0/nikcli-ai-darwin-x64.zip"
      sha256 "dccb7aed09fc7f62e675ff243b5249c462d2ee1b1fe392d1cfaa2fea1660801b"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.27.0/nikcli-ai-darwin-arm64.zip"
      sha256 "7fcfc5eca56154474be2211e561d3bcf5ebc17245bfab408a5bc81a9768da4ee"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.27.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "3c58102bc1b1f61401a33907f7414fdf25d087a6583419f282a88e336228556a"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.27.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "fc6e020a4c87219c28ba0059f99b75b2aeabe7fdda008aacbb88eb7cde43d3ca"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

