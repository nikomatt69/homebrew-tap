# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-05T17:18:17.901Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.138.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.138.0/nikcli-ai-darwin-x64.zip"
      sha256 "6fb095246d93ca76086ba2ac926c784a2d9f369f77a410d0cd974c1fb7a703e6"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.138.0/nikcli-ai-darwin-arm64.zip"
      sha256 "4190d6ca612e9be91e80aa1e6c2301b8ce1b5b3d7dd14b7f90ab2c608a46248f"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.138.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "39e15daecbdce6799c01f89eb37a18a597e9087f2b6514c6505274ea36204dba"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.138.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "1778cb3140a7d969ae82830afdd50533ccb26df9affdf520113da5e3a44b5b61"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

