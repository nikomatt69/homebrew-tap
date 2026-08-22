# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-22T20:55:34.290Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.308.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.308.0/nikcli-ai-darwin-x64.zip"
      sha256 "7139ab272b429e6e50302a6cdcbba1f241a18be1588e5558761877aa8e2b8ac7"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.308.0/nikcli-ai-darwin-arm64.zip"
      sha256 "ac4cdf1f24458db0653823f3f2ffa2bbc42f8179570420292debcf1d79498b3c"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.308.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "f108ea7641a506c4cf76e8eb5a4819e66bcbd0a2d17b382dd6cb1a70390c7d97"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.308.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "1667a17b7a034d319f04983610c13da2ef428392819145e611db2f72c4161613"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

