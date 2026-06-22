# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-22T23:11:49.262Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.107.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.107.0/nikcli-ai-darwin-x64.zip"
      sha256 "c5ae6e4ac482511d0e46f5e7c9f80d82e68d5ee7795e92bf0edf31adcf440ba3"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.107.0/nikcli-ai-darwin-arm64.zip"
      sha256 "0b75bf371e6ecc83e82b4482839d4349cb5682bfa9c63a568c8f9a0187db63d6"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.107.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "d1458fbf2aa96c283a79b3a4475474aa9dd4d8a7246de429a84d0af559ecfe24"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.107.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "27e4139bae4cdaaad1302abb2ff8ba93caa30cc715a77245eb45f66ad0321109"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

