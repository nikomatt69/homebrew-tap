# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-07T20:37:28.215Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.259.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.259.0/nikcli-ai-darwin-x64.zip"
      sha256 "38f4fc59a3b50cb3e35b1f506220bd74e7a8db675bdcd00e74df13428c2379ff"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.259.0/nikcli-ai-darwin-arm64.zip"
      sha256 "ae0629f0bdc8abb1391e787d0e9a3723c8ff759373a8f17eaa1d9c2ca9cf0a05"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.259.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "1287fefe22cc3646ba9c09924011d582dd59f4e581ad182fa5df72bff3752287"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.259.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "b1237185e76571206a31419f0d2d4b1b4be44f7207f43b801474a46c402b05fe"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

