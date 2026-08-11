# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-11T00:17:27.336Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.265.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.265.0/nikcli-ai-darwin-x64.zip"
      sha256 "26b1a762c00de95705ed9ade62a3c45e13509725f26f2e4a508f08b7c31c8676"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.265.0/nikcli-ai-darwin-arm64.zip"
      sha256 "4697818000e292c30318b9b8af416ab8aa4516055cded95e3d70e48f2d246bc9"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.265.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "73d9d0425c98605b9ad7edf0d9e999c98862431e64172d693336441736ad0ecf"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.265.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "81872fdc61bb5b92dad3be7c4b5b1f5add4c67fbf82ff057e3303e6f8811ecf8"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

