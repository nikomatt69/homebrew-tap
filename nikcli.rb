# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-22T00:10:16.574Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.97.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.97.0/nikcli-ai-darwin-x64.zip"
      sha256 "7ceefb9857b32aa8b90272830ab661161bd4868092dde2bcebde3f979f7f5b38"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.97.0/nikcli-ai-darwin-arm64.zip"
      sha256 "407341183215d978ddec680783aed30e027e88fa38e261e4af67381e8064b973"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.97.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "8e78cb962572bb239ce10e5aa6d25407549bee45ba021e0dcfe9394978ff8865"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.97.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "5d2365ba93e2b869dc2b8c852bb55eeb1014e7554c0c1ee7e20f4f5c2f3ba8df"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

