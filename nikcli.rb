# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-03T18:16:50.846Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.233.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.233.0/nikcli-ai-darwin-x64.zip"
      sha256 "0cadb4f3aa8c8fb440d0ada92313c98590ddfce1db2d82516b13ef25e0be03b3"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.233.0/nikcli-ai-darwin-arm64.zip"
      sha256 "3d8c0374278d3c6f524f72d9be32f050d86aa67bbff5a553ee49749aa0fa0d84"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.233.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "0c8fb82414c71a200f6bebdf016a172b3f7863a04d46524a9261bf170b11db1e"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.233.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "f7c2f3e6b32c43b10a442a2770b1bcd0ebb894f24b92f3a68936a18015ea0d1b"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

