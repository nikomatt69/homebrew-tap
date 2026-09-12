# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-12T01:12:48.917Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.347.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.347.0/nikcli-ai-darwin-x64.zip"
      sha256 "fc025604a04b19f49ba0ea1347005330c743bb3b27cd30609641aa36c274d5c4"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.347.0/nikcli-ai-darwin-arm64.zip"
      sha256 "1c0368b727322e4a765a1df7d5076c05a5ab3fd431125f35078764621eb62270"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.347.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "ed704314b9d4830b0cf7bfbd6fa655703acfce249b4ee5718cdbca3ff6700166"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.347.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "040545bbb3955ee9de06d8935c7af51b9ebc82744d2fca3bd5c892b9dbcfcece"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

