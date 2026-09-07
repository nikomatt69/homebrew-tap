# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-07T00:55:16.357Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.330.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.330.0/nikcli-ai-darwin-x64.zip"
      sha256 "b134f73937c0fad095c8958b1f976acf79307f02ab8262ae928e9678211c7d70"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.330.0/nikcli-ai-darwin-arm64.zip"
      sha256 "e05a1ba3507f22dc5273f5c278b151d725a75b5214a9e5c6d38b9fdc2967bacb"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.330.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "5266c24b779d8e484ae29431f540d7e686b9a520429dd27d0fd68b1f1aa78717"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.330.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "28950c87f42697c2337985c1eb6cff04dd39915ef556e5f23052b8db02fb96ab"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

