# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-26T02:32:57.265Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.320.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.320.0/nikcli-ai-darwin-x64.zip"
      sha256 "6ef22c6c9b22652a0f92e87d9236743c2672fdd525d3a60212dc88eebcf6611b"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.320.0/nikcli-ai-darwin-arm64.zip"
      sha256 "2b6306fb2edbdd83c11c4fee98e365dea778b11b5f5acaa97d6bfbf7e4567d40"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.320.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "7c0046e8d6dee772e7fe18902d76d008cbf779e9d13b7a32f4c3614f7f1e74c2"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.320.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "c9f2e92d77c3a9584991c104ed6ee5c8fb0948ea87d10ad482a05b39bc1383e8"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

