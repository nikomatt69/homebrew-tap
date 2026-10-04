# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-10-04T20:01:27.655Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.428.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.428.0/nikcli-ai-darwin-x64.zip"
      sha256 "86fbde16beca2be79e6f376d63b4e06d443b191cfac827a633bbadf14e0252fe"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.428.0/nikcli-ai-darwin-arm64.zip"
      sha256 "645619e25b3a19ac834d0abd351c7383271280ce2371cc92444f0d98f02d6ff7"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.428.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "7b935e55ef07fe363a7975de07b64e7285f72d0575330c4b2f5f6bed2e6b0b13"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.428.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "7bf34c81192413e034ca4125d51f870286272b2ca68ed67c0ee7ef17c0b93c85"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

