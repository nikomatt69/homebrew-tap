# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-13T17:09:07.254Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.281.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.281.0/nikcli-ai-darwin-x64.zip"
      sha256 "558504cfca2c8329566acdcd4711f67468b0615dddaee1def79507bfff886e66"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.281.0/nikcli-ai-darwin-arm64.zip"
      sha256 "60da690fa8f837aa11fd09d7dd1fe3373200541461b356a0c10ca8b02e2d1315"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.281.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "223e598cab88465534a82c0247027b24d0120ad84a5c9d4adb93fa7db6fc1880"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.281.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "ad668541634bacbeea2c9a3e7ee3992bb0236d425e35e652c4fe504a2d92bb4b"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

