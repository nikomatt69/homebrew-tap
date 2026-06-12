# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-12T20:16:56.391Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.70.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.70.0/nikcli-ai-darwin-x64.zip"
      sha256 "66cf069d49cf430d7ef5a6b9e79ad8739586198ba3f05277760455c3cffa62d5"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.70.0/nikcli-ai-darwin-arm64.zip"
      sha256 "4b6b5c026543daa4a46a4c0ad394a6bb5c9283d1e440594409a4de0b12d05037"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.70.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "ac197b72a07a1fd839587df03e5bbbc6b6e590d8734e5f57eb83a94202504969"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.70.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "9bbceddc570e6376088399244654fe6e09d75103184f53bc3fe85caefb23cae9"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

