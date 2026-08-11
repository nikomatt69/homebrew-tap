# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-11T23:56:27.872Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.274.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.274.0/nikcli-ai-darwin-x64.zip"
      sha256 "a15a9a529988b5d4e863df189f6edacc387fc16f06b1a4a8e8e2168c7046953e"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.274.0/nikcli-ai-darwin-arm64.zip"
      sha256 "2a7e848f2936d72809613abdfa0f4c6d9c77355109002a6e840d30dc5df999f5"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.274.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "c954ca0d5ffe02b7448c4e917fcfabe9d5d1bc67c5de5c63ddf3807a80de0807"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.274.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "3eec5eb471c832377ce66c990c390987a9559eb8c18409e29601ff90700de2c1"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

