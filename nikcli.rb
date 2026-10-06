# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-10-06T23:22:40.927Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.431.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.431.0/nikcli-ai-darwin-x64.zip"
      sha256 "1ff94c1e2388f7d83bcbd2601a9cbfeda558cc43e5b8f33c25d86c6a7201f5a2"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.431.0/nikcli-ai-darwin-arm64.zip"
      sha256 "5825e6cfacb7e1ddb5246726710a83ad35587f99bb1fa770e519ee4027bea88f"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.431.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "8d64bbf20273cbadfae152afe7271c23ce9b4f551619741920f08652812d1375"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.431.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "9269c08d7a6a0b6733fc0f5ec3e7653c20feb6018f3a88907e710c098ad1e66e"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

