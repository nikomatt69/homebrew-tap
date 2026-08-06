# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-06T18:55:46.214Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.245.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.245.0/nikcli-ai-darwin-x64.zip"
      sha256 "20236dce7941fb962cc2ff52bac9ecae5c1cdfd2d15f6a7be00b49d586bac565"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.245.0/nikcli-ai-darwin-arm64.zip"
      sha256 "dfb355b6a8a7eeefe6c085fdc128b9aa8046ccf631be7243b3f9f967d53241fb"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.245.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "435a301264b186263e69fab80f422ff93ea071a8f5f7f13b87d471044a937527"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.245.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "f3d3857f7cd6008938018603b90778687d62376b4ca4a7e2b1161daa590f0276"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

