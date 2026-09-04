# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-04T17:50:58.316Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.327.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.327.0/nikcli-ai-darwin-x64.zip"
      sha256 "bb5b9793d4b1a381c598d4461dbcd2c15a78bad93078133b029be0be5729b9cb"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.327.0/nikcli-ai-darwin-arm64.zip"
      sha256 "e8e389d957e9fd78a4fef5d0e3e28d490ad2b24618fb8d20df23434abba81d2c"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.327.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "d17bc64c57b57c3fbb27bba27c9976943ff4f6f453de3d306cf549b37c829c10"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.327.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "42315e625535d5fd1bad8992a36431003d7e6b77589aae639364e329f55adbef"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

