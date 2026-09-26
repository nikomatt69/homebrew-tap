# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-26T02:50:54.066Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.399.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.399.0/nikcli-ai-darwin-x64.zip"
      sha256 "60bb836e11e988fa500c1e01369db622bc8361ca92214eb1869c68a993348898"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.399.0/nikcli-ai-darwin-arm64.zip"
      sha256 "dfa20aae0fa4572f6c64f31e08d73b6f913df694cbb570674f0f2a3bd3dd75ee"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.399.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "7ac6aacc18797b7b0f1721179daf6b1ebeb6d0f0e84844f0168b8cdea634840d"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.399.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "539689716944e112b24c92bd6feaeb651d122b2a955291fee078cc6623c1bdf8"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

