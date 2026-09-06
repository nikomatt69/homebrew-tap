# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-06T23:35:10.105Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.328.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.328.0/nikcli-ai-darwin-x64.zip"
      sha256 "ca28cd2a3550d8017ff499536c1a6021e6427244fd757df5f9fd860e01877c65"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.328.0/nikcli-ai-darwin-arm64.zip"
      sha256 "3eadf59b5334dedfb96005dc071c46baf074440cca0d3389252c040db45d67b4"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.328.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "a51f821b93a1811afedaa3e8ad1bce0e563b4b1667f7bf76d553f2eb92013681"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.328.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "f875b55ce98613581a8070d62fb92275cb411d79aad9409199f9de627f6ef7a9"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

