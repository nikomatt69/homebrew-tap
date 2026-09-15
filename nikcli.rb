# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-15T12:41:03.846Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.356.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.356.0/nikcli-ai-darwin-x64.zip"
      sha256 "5ba4b8b2c0f209decb0fc090f988a055c41a53636d721ca9d1b297ce19f43d81"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.356.0/nikcli-ai-darwin-arm64.zip"
      sha256 "c41e29aa5d321372b20d20064f87761a65a2eb199dcf7c7a2a8a6241b1c650aa"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.356.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "337902b48459e2a6b0b1d755d7b357b7bfeedefd5f11e94c77e6a0bf72cb69c9"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.356.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "24d34dbc576765129028030bc7f126d37a84ba6a5c25953656b855aa985b0a94"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

