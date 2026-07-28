# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-28T19:26:18.683Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.208.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.208.0/nikcli-ai-darwin-x64.zip"
      sha256 "3244a858851f49f8cdbfd6dd9ff7a7bc026bb3d90cdfa16444cbdc59051b049e"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.208.0/nikcli-ai-darwin-arm64.zip"
      sha256 "26a310e8fde5f74f8597e1e098171e83374acf8e49ab355220004191d0a26b0a"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.208.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "5fd07220bb6ed234f65cfaff7b78b2dc1af9e98ea9b14d577153acdd3cfe5d11"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.208.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "096e34ff310dc2882acd6e15d5a101b3619ccdfd421c0bb04512a89e56c98c16"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

