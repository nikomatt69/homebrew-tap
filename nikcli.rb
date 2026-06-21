# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-21T17:53:15.768Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.95.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.95.0/nikcli-ai-darwin-x64.zip"
      sha256 "c714c500a586dc1f32dd70ed0c8d7fca0f40911f8b0a6c4bbdf317feefc5f994"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.95.0/nikcli-ai-darwin-arm64.zip"
      sha256 "ba15f388b6c6da3f8c3c5e0eb0d76d03bc12e959a7944aef60a909eee969bde2"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.95.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "44a0c3db13e407590b43118f0e8c11863077cba769cfc6b82152acdd1df7501c"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.95.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "d8fb1f32f0ec8b0afb392ab09e02156a5d8db4a6e2b8ce1e349150cb96df4166"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

