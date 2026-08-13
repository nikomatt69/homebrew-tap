# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-13T02:57:09.613Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.279.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.279.0/nikcli-ai-darwin-x64.zip"
      sha256 "d6c9cac249c729a355c95876edcc20365bd4e54e2720f4ae04ee7245a4f0a550"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.279.0/nikcli-ai-darwin-arm64.zip"
      sha256 "b0168ffd86a8e82da09326e13e7ebf744c7358b9f2c3e175727f926f54b49c9a"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.279.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "2b0b9862e5fb2a79f669f144e24e565c8256b090becc7dab19c268df44016dda"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.279.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "33cf2de220ff5bef1bcef58560e81068a9a2c6b5014724b9800e9b2f270ae0f1"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

