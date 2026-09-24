# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-24T21:02:00.587Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.393.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.393.0/nikcli-ai-darwin-x64.zip"
      sha256 "edb7d9163aaa58d9e3a0897d4de725f474db547bb2b6e25555c5a610b3c64780"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.393.0/nikcli-ai-darwin-arm64.zip"
      sha256 "4e374f96870a55d062e83133f653aba783446f718c83a67ce571572cfb4cc3b0"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.393.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "35461a5783b82c97f5d86844e7457a992ab5943f79f5b9c058d8c5561154bf8d"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.393.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "d43a9812396c7c2c4e68283af97849c96e7a0e2dd21fc48b543b06f7ce8b7674"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

