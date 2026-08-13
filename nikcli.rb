# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-13T00:02:31.033Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.277.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.277.0/nikcli-ai-darwin-x64.zip"
      sha256 "22f4aa2dae5cf3bc80fb4ff45a298e0911df38d5b3940620ba086147c1c50237"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.277.0/nikcli-ai-darwin-arm64.zip"
      sha256 "8722ba9c5eff9fd8894de1b9ac2fc003f1afc8b44c830ecf9fb4b12e11350174"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.277.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "098b649ac247ff729d015a5b4b1729c1f5b47f5e83069b2f27da3453083fb9c6"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.277.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "062264d358abe1f60fe59a77a263a6f32eb362af78260230e7dfce1becc66324"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

