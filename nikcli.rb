# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-03T21:08:46.026Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.235.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.235.0/nikcli-ai-darwin-x64.zip"
      sha256 "9f189bcf0558867b1376911006e82cc35bfe8b1efb6d1f376ab1c62e99ff98b0"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.235.0/nikcli-ai-darwin-arm64.zip"
      sha256 "21c7555f1bbe4a03ae68228355ec15c7d72681ba873cfb4e9ca5f7946777b666"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.235.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "6dd910499d6e1915c9a178f3f5f0270a42cbe5c4a9e576faa3b0920c5484a5ad"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.235.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "124ff51093ff3347aada4ed2c3e72ea7a84b7939bbab068e5f4636191a002030"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

