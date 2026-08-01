# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-01T14:22:06.636Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.224.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.224.0/nikcli-ai-darwin-x64.zip"
      sha256 "3ebc0dfcbae3cdd1454d329b860848383aec23ea4d7300bad30722c78b19b33d"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.224.0/nikcli-ai-darwin-arm64.zip"
      sha256 "a3db9703c488f6dd1a4589d9ef72b7eaabdea49eb917273a7438bd26302bb0c2"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.224.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "bd1bfddb1c8827e2b4e499288be40aa63c43d55c7d1fe4221f684f40c681b003"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.224.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "12a43996f4ddf103e7eaa6e159665d31b41896eed02484b7d83e3cf8ae4ff4dc"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

