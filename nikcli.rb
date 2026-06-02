# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-02T21:46:57.234Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.48.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.48.0/nikcli-ai-darwin-x64.zip"
      sha256 "5a6bebb708728d332b653af53124c940a84f78b60ab24e4411889a44c4a408d9"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.48.0/nikcli-ai-darwin-arm64.zip"
      sha256 "07321cc87914a83b06db1c5cbda099165edee0491127a7431fefb8433c0ca96b"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.48.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "52d68053275d8d043faabe075265b153150702a1adb0a9a7d8f35b6b6b819051"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.48.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "5f928456d03e379b933f9b1040609033062a6f22e200247a9d5fa23a85b3bdf2"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

