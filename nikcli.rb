# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-20T14:08:02.320Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.181.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.181.0/nikcli-ai-darwin-x64.zip"
      sha256 "7ad78edf23c36f0dc5875743d73e689db6955dd300b17203f607848c04310d57"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.181.0/nikcli-ai-darwin-arm64.zip"
      sha256 "d36866b0a89ffcc33c969c49c5b6883faa08210a2c5907d0c2a9c8f491a11283"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.181.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "a1072a168589ebba7a3e6a10f2f06a85e08cd082a01a33042737fbb6139340ee"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.181.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "7bf94095ae059bf00a463efd4c2bb1372dadaa1dc0b778000d8088bd5f967a96"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

