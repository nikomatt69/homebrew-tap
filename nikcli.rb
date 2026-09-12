# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-12T11:43:39.115Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.348.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.348.0/nikcli-ai-darwin-x64.zip"
      sha256 "3b18af7b4e6e655eee55982153181108b295e5ce2d2060a964021788b3e93ce0"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.348.0/nikcli-ai-darwin-arm64.zip"
      sha256 "6d7e097c00b52dd1f5864ba091a0bc03b443c1f31448a652c9e90e6af7399eb9"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.348.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "6923c35111dbc96dae30ef9b0f47c6835a7ce59e8c9068dfb0a6e1b38b64e207"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.348.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "b0f73e0cd3b04682473afa458ded717de4e630700792d6b1807ad714a4c0ad2c"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

