# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-11T01:13:53.580Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.65.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.65.0/nikcli-ai-darwin-x64.zip"
      sha256 "69d95c9cd0730a81de6f6c529b947a4fc12d64df751c2695f9901b5c77dad249"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.65.0/nikcli-ai-darwin-arm64.zip"
      sha256 "a1222f272d87e1e872d5096a1e7b254d624dde5df839fef5aa31a1c5fd05e3ec"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.65.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "22a02d41a6e5add827abc776c1932786023f4f53a7b04a0c2978c8e7e9c0492e"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.65.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "185e4c8e24a5ae0f495e5cbf09656a10589b21b7dad81b95c9adf9571bc6e5b8"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

