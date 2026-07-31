# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-31T00:07:30.324Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.217.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.217.0/nikcli-ai-darwin-x64.zip"
      sha256 "c03709cb8c1d73a2231da55a14cec30a019309e34aa7b3228cc4133e3647af38"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.217.0/nikcli-ai-darwin-arm64.zip"
      sha256 "022222c7734e755cdb2b34bff424d2a50c3c9ed7dcbcbe58733d980f6337271a"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.217.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "3212f8ff8d78b1eacdfe71bfb2e8e6542cba6c390c64b60ed645171252e1a226"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.217.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "b62b6d0b51b24f018935d0765bda90d78d314352cfb3c329c4a8d903e39382e9"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

