# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-28T00:31:49.726Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.124.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.124.0/nikcli-ai-darwin-x64.zip"
      sha256 "910d976a8366d92c543b5bcc4d74e5f717a81517085d46964d8b8c139e34c016"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.124.0/nikcli-ai-darwin-arm64.zip"
      sha256 "f5d36b96ca0dfacc73be23e2e92914e77c2d6e741e3a69b7f9bb4c525ec70e14"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.124.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "98c3987386e0064f25029d4a2d334d83a90725e00be35149ba67904a246198f2"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.124.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "8c19357308bb927ae0f8632530c0284f46ae76927dffef3adde8d0839ab83a5d"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

