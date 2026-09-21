# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-21T00:11:30.948Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.380.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.380.0/nikcli-ai-darwin-x64.zip"
      sha256 "8c82b367f9640305d3d8c9a37fd301af4548758ec56e4194de037e2bbd3f90c5"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.380.0/nikcli-ai-darwin-arm64.zip"
      sha256 "6f37eb529c46795c81b2327629ee6887b6fdff304c266e8689cfebd7af21f696"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.380.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "46068ced44b68bd9effdc7cda671698735e0075122a5318a97701c8bae00c43d"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.380.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "7bc06bd914284bc764664a6d869bcf8359a3fe32bd3de73c6f6a462fc266e61a"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

