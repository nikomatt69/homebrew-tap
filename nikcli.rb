# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-11T20:19:51.512Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.270.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.270.0/nikcli-ai-darwin-x64.zip"
      sha256 "27c98aa11c5d1f2d7ed5a8fd8d1abef2b001221aeb67e436d183eed969bec1d9"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.270.0/nikcli-ai-darwin-arm64.zip"
      sha256 "6d96c0831c06919828e41bdfab8f3148711ebc2105d2e7fd68515f0ae532971e"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.270.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "fc5d239cf872a86deef949c0bd3e3b711bf984908f906b6c365ee745697ed2e5"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.270.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "8c61dc6406cad1c94c57efc78fc3758daffc8873eccbd2fd2227f1974f9e6078"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

