# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-28T19:03:38.759Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.127.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.127.0/nikcli-ai-darwin-x64.zip"
      sha256 "145f9bef78eee36998d7d73c5a0257744786de7160095b4254c14779dceb3283"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.127.0/nikcli-ai-darwin-arm64.zip"
      sha256 "0c146c8b7ed715d1609c0bd28c04aff773834a1d5ce3a9af5d0edc52e3b71651"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.127.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "4ebb27d2de0700976ea1d4552c62502d75cd9456a0fc93f20e2269d072c7df86"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.127.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "420bd9b8142380e5f4b3c5427023b6dc5699a20ad0dac53d4761551b468425c6"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

