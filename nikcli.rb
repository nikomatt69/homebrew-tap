# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-24T17:16:14.286Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.110.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.110.0/nikcli-ai-darwin-x64.zip"
      sha256 "c233348d34c72685cedc1a78e726dbe76d943907b4114095806c4b646099b121"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.110.0/nikcli-ai-darwin-arm64.zip"
      sha256 "0e904d4552034cd1826ca383d2ed13ce0185ba56a52168e388a98cd76633e08e"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.110.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "4c7cfb2e99eaf5963e9e1d37a27e9ab5365471ef1ab9658b4aacee549283acdb"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.110.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "b3536502267d0b7eb7e36b0555a6fcfbf66f81d1629c17e7fe39582b2d5c7d68"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

