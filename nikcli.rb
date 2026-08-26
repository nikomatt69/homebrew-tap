# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-26T01:47:07.053Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.319.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.319.0/nikcli-ai-darwin-x64.zip"
      sha256 "06eb7bfb72b039eb2a1616a432916f2d3ed45ded380bf0fbbe0f97b9b6246aee"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.319.0/nikcli-ai-darwin-arm64.zip"
      sha256 "aee3f2cc203e92d754c5cb6f8c36282d8c015520b6a3ad73a190d8b9e30e425e"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.319.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "8fcd80248fd21f4e98b467455294c28d0ae3482dfcc5d44c8c8b73f3545c2c91"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.319.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "87803d4ab7f80ed4db49cbd554d728e60743d7ea4e4972fb816e9fd6f2d1ec52"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

