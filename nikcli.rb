# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-17T22:45:54.819Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.86.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.86.0/nikcli-ai-darwin-x64.zip"
      sha256 "e8a7fe27f7cfffcb5f0417cde6d54ccf106897843319c99e07d7b2b58ba4d1c5"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.86.0/nikcli-ai-darwin-arm64.zip"
      sha256 "04dae23378028a6ce726acf3cc219aa54af4e74c248b837b670fa89660e8db28"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.86.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "218546d31a404381d82265e50ad396685411e0e5e129e56440c11178d8556cf8"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.86.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "0402b82e01c2d67928a33995fdbebff98da3a4b6ce99e7bbfa4f67044a23e584"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

