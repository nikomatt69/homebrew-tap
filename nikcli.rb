# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-15T00:30:10.762Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.168.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.168.0/nikcli-ai-darwin-x64.zip"
      sha256 "3c96ede899626c1bbac10cd294f9ea86e1e02ed0c014d89d06b61da40f94f7da"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.168.0/nikcli-ai-darwin-arm64.zip"
      sha256 "4df380e8efbf11b20e2960caa350d3a6d5850c9c466bb6c9a1c9b04ea96c713e"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.168.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "9c003a5f0c0805338b9c038fedccdd7a0e58919d020e7d9dbbe87a7683692311"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.168.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "641eb3b81d5d1222bde791284d34da3789e7ba0afad88cc4e0fb4ea37651c989"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

