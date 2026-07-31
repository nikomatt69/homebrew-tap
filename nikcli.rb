# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-31T20:41:42.162Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.221.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.221.0/nikcli-ai-darwin-x64.zip"
      sha256 "d33c95bf056aa29c30d3543009f01c0932b1e2cbbd318f01bfb62914633a2bc4"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.221.0/nikcli-ai-darwin-arm64.zip"
      sha256 "3f06ecfa6a71bbdb777d4b2afdb45c30d566999407d9335343ed5b9121d0ab90"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.221.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "558ebca433440c5843e14830aaf9a690ebe2a587ffe1bb2524bdb4e0f810dc62"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.221.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "f675b4e22f3955133ee1bec5f3d08ab9cd5e607919177d72693e20f20339784b"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

