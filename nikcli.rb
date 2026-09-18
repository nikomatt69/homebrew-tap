# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-18T18:03:16.096Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.374.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.374.0/nikcli-ai-darwin-x64.zip"
      sha256 "fe87ef95b01e02bfcde5a7e92ffa0851b35a903896b6d2a3fd002a9aaac514d8"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.374.0/nikcli-ai-darwin-arm64.zip"
      sha256 "7a2d6ff8411983b47c3e7a5286ff5e078a88be4d2de078157e2715417405bbd0"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.374.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "b14c9549f41c0149289306b574c13e42760483ae723ece2b918f5d7103f0ea78"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.374.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "4f5d9d8cf50c211963c032033a64ecc2da6a45b1796409d137ac60b2e09376b1"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

