# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-23T19:05:16.706Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.312.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.312.0/nikcli-ai-darwin-x64.zip"
      sha256 "fd32d71ff3dde062e3f5ee8424b27b5c05d68d4a8773f2a6fbf0a0ed60039633"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.312.0/nikcli-ai-darwin-arm64.zip"
      sha256 "e7dd2b0e4bd4965513cf343db5676e6407d1158a1836c4e7518c7d3c55db9e5b"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.312.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "1efca67584eacdda8abbd5d6d9db222aab3a25e7addca0dbad59c3ad129dcf7e"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.312.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "d6916b4ee9df236f84fbea7e6820c5c14d185467c23ba0ab46540d225e06f9be"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

