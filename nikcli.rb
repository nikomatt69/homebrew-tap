# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-19T00:23:01.203Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.296.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.296.0/nikcli-ai-darwin-x64.zip"
      sha256 "710afc9bb67fc06f0d0065ab432c000d9cfdd58bb71a9d4d5f75a5b99f47c43e"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.296.0/nikcli-ai-darwin-arm64.zip"
      sha256 "753fe416ceb3fcc099c73e5c3603dbf6061cb476c9fd5e4871073e68d8bd283c"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.296.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "45a4a377decc0049e5ab7a9fbb0362b7ce96487fc40ed0f4f5d7ced13c75f2be"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.296.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "61a71cde2f53f8ad1e2eb65543e40f09584ca6c47d0f7dadaed1c88397dc6622"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

