# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-22T20:55:23.360Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.192.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.192.0/nikcli-ai-darwin-x64.zip"
      sha256 "f0d6e75a4645913e038df98282347184b445d2aad6c6e24c987a8b9e73fdfe30"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.192.0/nikcli-ai-darwin-arm64.zip"
      sha256 "64955687fee717e53a13dbdd34f664a6a720e08b59562478a95bc90a04f95346"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.192.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "2ce5e15842a4709783f50a9c1abc37b2d25b52ce6d9956f0a87cb990bbdfbd6f"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.192.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "16ed1bfd61c9ddf59d1363cac950e6fba7c492bdabf209c60472018dd78325b5"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

