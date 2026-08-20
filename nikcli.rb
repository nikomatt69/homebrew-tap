# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-20T17:01:32.157Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.299.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.299.0/nikcli-ai-darwin-x64.zip"
      sha256 "54dad9d034b1f0c8e1df4a1e6cbd3ab7af9e59f215e542198a1484fa69fa45e1"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.299.0/nikcli-ai-darwin-arm64.zip"
      sha256 "ffb4d7e58294342626b6acc823a364877e1325c4f9a0e6db3dfe52e68f0704b1"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.299.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "65443372b673df9897f475fb15f998b98f48c7c4afd4df1dd4330533b9b85d2e"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.299.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "1bdf2f665c054b294df4b383ad29e69fa1751a14e9130aca975635da0d3c4bc0"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

