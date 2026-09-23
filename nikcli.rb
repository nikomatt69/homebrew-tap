# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-23T00:04:02.334Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.391.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.391.0/nikcli-ai-darwin-x64.zip"
      sha256 "e7b2ce9191f502a4da46655f085c828c0400807106c88d67690697267473ecb1"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.391.0/nikcli-ai-darwin-arm64.zip"
      sha256 "a7054e9dbc2f31b7a70bd10cf677a0a9c0a6d49b99d14c9b66e9afe8d23b063f"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.391.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "402960072f889a9f642331ee6871452d0446ec8b63d60969e4fb835639bb0fd2"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.391.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "3e1e98bb0aba3d98f067f03acc2104620496bf0432ea0b8092591a663ae7add5"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

