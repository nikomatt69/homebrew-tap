# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-25T01:21:01.487Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.314.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.314.0/nikcli-ai-darwin-x64.zip"
      sha256 "700bd767fca83018161c017ba78b4c7cb511e7c9baa3399d8c4db7294065d20a"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.314.0/nikcli-ai-darwin-arm64.zip"
      sha256 "8fc54c4423bdded5e0213ee77ae436b73f21e8a723dd9018fd00f3e734d0583f"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.314.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "d83274cfcbf55536535e736f946d01e95bbfa98b61635ab29a002f5972b7ce60"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.314.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "b0ed035f24fed44f8e980772785bc66cf7fd9c25d80fd6647e1ec104d8f92bd3"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

