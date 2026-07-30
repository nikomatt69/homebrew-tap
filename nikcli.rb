# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-30T21:40:53.357Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.216.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.216.0/nikcli-ai-darwin-x64.zip"
      sha256 "33ea58fd2864ce0c6219da603d71fe07c73c3ea9706790506c0ca24600e79701"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.216.0/nikcli-ai-darwin-arm64.zip"
      sha256 "a40d2ab8b55b3bd301c00b9889d44372576f169cbdd02175aede5ed9deb73140"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.216.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "4acbdf7e64430f113d5cde2d2c291c3d478d5cadfac7da0b176fe59263a315bf"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.216.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "422bd2b9601a5d3f8640f97745b9a7a7ef12cdaccf1ef9b74d4603ccdcd1d2ba"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

