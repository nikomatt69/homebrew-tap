# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-12T22:59:59.318Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.71.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.71.0/nikcli-ai-darwin-x64.zip"
      sha256 "3e7d96ec9a4b2cf149ae6be0b245848674aaa4f02d0ca4f9af17c4241d05f41f"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.71.0/nikcli-ai-darwin-arm64.zip"
      sha256 "1988ae281edd348bc14bd57207cfd82819285d7bd7ecb657f6efce26b39e915a"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.71.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "b22cbfeda0978db08377a7341ab8eacd2ef989ade6971ec68c5ba4302699b563"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.71.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "bc4c766905fd51f005e41341d4883c353fcfb42f21552f46dc217d39e3ffbef2"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

