# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-14T19:11:31.121Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.165.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.165.0/nikcli-ai-darwin-x64.zip"
      sha256 "88c36d3d9a44dd7c52aefa5832b4cccf31b1dcf397ecbdfed471342af1eecd2a"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.165.0/nikcli-ai-darwin-arm64.zip"
      sha256 "d9787a612cd836696233088e5ffef07d102e2a650a903630a07555c6d4b081f6"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.165.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "1242e8195b6a2201568d6b42cb89483b30ca20d3793910c0d9d0d88890e2d5d6"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.165.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "89e3379193ef041f9059c7e2cf3e4dfe88b1c2b418423cc25b33c961cecc843a"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

