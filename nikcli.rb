# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-11T00:52:24.127Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.64.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.64.0/nikcli-ai-darwin-x64.zip"
      sha256 "ed9131c6a9e3f37c80921bd91caf9b75361cea72f82488d22db6bb10569afc64"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.64.0/nikcli-ai-darwin-arm64.zip"
      sha256 "f8f7e8b37d03cc3a3694133aa12447df35589a78ebdee8e43c3c8ca47b81c137"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.64.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "265ed1d7f3566109e7134ac3763da80b34fccf853cdcb7661eaeadd57bec2131"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.64.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "5e3445e3a202025ca9b4d42eb00ed45320b122b12841063f8b3d104f3e8833af"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

