# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-11T20:11:38.224Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.344.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.344.0/nikcli-ai-darwin-x64.zip"
      sha256 "ff1f517c92ae7ac2cfb6cf2cb5776e365a303dfe3c12b3b66fb95b1a9415529a"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.344.0/nikcli-ai-darwin-arm64.zip"
      sha256 "d533c83f785315bc621414e0418ad807d4768fadf851b47971f1a02e8cce101a"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.344.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "49a70ecec216c2d3597583c9c3ba54ee16afa25cdc6f1ec13e21c4ed773b7405"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.344.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "229a08a57ddb9e24516dbdc22fff6defa7599fa0a7158ba5b64efaa2c1e6eda7"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

