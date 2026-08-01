# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-01T13:33:04.371Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.223.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.223.0/nikcli-ai-darwin-x64.zip"
      sha256 "58ee01ea0e3b482ce41dbcbed43cfcf5a6e3de15aadfc303ac95c4d77d94fce1"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.223.0/nikcli-ai-darwin-arm64.zip"
      sha256 "5730904574999da71e24685b7d7348593adcbe68c5753d341080ee627d876aea"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.223.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "1760acd39a52d52dfd034f570f605dcb7a386c405e8827c8997d12585f4c9cf8"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.223.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "7ee8177737569e06e120bf05ae1d6d43936f1225365af3ee1475bc5082d83115"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

