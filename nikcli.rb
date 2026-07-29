# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-29T01:46:45.478Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.210.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.210.0/nikcli-ai-darwin-x64.zip"
      sha256 "165ec59b2c251d5ce0551d8e1bc28d71b218d2a61ba37a09cb763bee518097b4"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.210.0/nikcli-ai-darwin-arm64.zip"
      sha256 "64c01727f14aeefba9c23437d8a02e5c425e764f4564381616834d1ef71ae066"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.210.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "69067036517e042980296de62937f3ad4213bf6436ab0be1ffb7407d0f2aa581"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.210.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "7288c3d5c4b15eb4af8a1c355cebd279f2d753420a1c4b141f45b0c973c23040"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

