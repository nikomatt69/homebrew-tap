# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-15T18:03:12.311Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.170.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.170.0/nikcli-ai-darwin-x64.zip"
      sha256 "ae0b44c198122bb3545625e64745d989499fafdc8afe2ab9c17bd686639440c0"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.170.0/nikcli-ai-darwin-arm64.zip"
      sha256 "dabd2ce0866ee53b363c14c4d88c5a054ee0560cb94c315b2c79f9fe425c1159"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.170.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "531e8fd9c17ea4ec79b8a8609064601a6fefb5ad64ac17fdd68e1ac329fb16d3"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.170.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "bd073be79d559f4cba6eb82a18a4337ed995919953363875c9130962a844c39a"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

