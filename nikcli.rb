# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-02T22:22:52.983Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.228.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.228.0/nikcli-ai-darwin-x64.zip"
      sha256 "b468621247f2c1e3e795e4dd9b74885cfa0c5358c0118fad199d231c0ec5483e"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.228.0/nikcli-ai-darwin-arm64.zip"
      sha256 "9b4b81a019fa42083f2f6f1fe4b96865c3e21d6c63c2fbc354ce11aa4974a126"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.228.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "47b8ce58d6483d9bf0205c72c0696e23310dd99dc9701242eb40c8109258e75f"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.228.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "ea62771e35ff83b005c9f3bc2f21ff1824ff32851e4d497f114a2606ea00d6b5"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

