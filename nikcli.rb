# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-17T23:33:54.732Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.87.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.87.0/nikcli-ai-darwin-x64.zip"
      sha256 "03b360833638afb425258a1b0d9c3bf4d7415219516e764018c5a944424b484a"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.87.0/nikcli-ai-darwin-arm64.zip"
      sha256 "3b4b6af5f5fb2cc06e09d38f52e833c20f0532b1137c918846355adc96d647dc"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.87.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "16a47c04d72eacfc9539f2e14773eab31963e8df2031d159051cdd8a9c84ceeb"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.87.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "4f4941c9e790ab99274f46e82f42a53701336b9d3aa5783e318c0a87c6ee3568"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

