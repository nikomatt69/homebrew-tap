# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-15T14:20:50.130Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.358.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.358.0/nikcli-ai-darwin-x64.zip"
      sha256 "192e8e0d852727bd4415c280cdb11e1f36d85f6ecb13867a0cc42eb0ef5347bc"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.358.0/nikcli-ai-darwin-arm64.zip"
      sha256 "3f60c946c43ee5bbfb69afa3a7adb006f5fa8f22aff0c5c7ffb164a984bf7d5f"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.358.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "bc49c44f1b74b6d3ee1d3caa51796d28a89266aa7201eb46b98b1d4eeafc46c8"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.358.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "679c797d624fc5945c7984b5660bec663daea14a904b6ed09c0913dc1a66d53f"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

