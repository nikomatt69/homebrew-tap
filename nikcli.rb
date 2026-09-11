# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-11T22:13:51.681Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.346.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.346.0/nikcli-ai-darwin-x64.zip"
      sha256 "d9e75bd264dfab31b64f26bb592cf191a9e2d4a999c25e61e4d6d6b70fb086c4"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.346.0/nikcli-ai-darwin-arm64.zip"
      sha256 "eee21eedf190925a4e18d4ae6fa50b58c09c18c41350aea55cc259700096964a"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.346.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "771b7bca7f27981b3dcd61d75f9ece46b475c112d6827224b75492c1931669e7"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.346.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "3e576c3e109ba31e02aae869fb9eb042af42eb4ae3c583aff9e24f64b02acb25"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

