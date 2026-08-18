# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-18T23:29:05.120Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.295.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.295.0/nikcli-ai-darwin-x64.zip"
      sha256 "d9ffe61ef6a45bd90f315f5e3a9dfb55466e5f997946d65b1765ff9313e24dab"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.295.0/nikcli-ai-darwin-arm64.zip"
      sha256 "c8eedd6b6a7e8f17ec520e1bb374d4b2aaef5d7bb4f77f68a9bbb27163b23b2c"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.295.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "8d26494d072666b976de6e8af9e6339b204f2ccbd0a9a8f77f12e6d1f471b7f7"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.295.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "2ef035dbb2c4fe4e835cf69e1cc5e7bf9b50f7d3709429b251b2e2db18fb3420"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

