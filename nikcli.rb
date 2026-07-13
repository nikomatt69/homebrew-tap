# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-13T01:25:43.244Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.160.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.160.0/nikcli-ai-darwin-x64.zip"
      sha256 "7d9ae7560138ac95c73893cf029e11e27b546a14aa9ab0acdd4c6a138a7d669a"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.160.0/nikcli-ai-darwin-arm64.zip"
      sha256 "7d5939a61adec71b3f78c7c35fc47237623654fb95bbf2a91555b021ebe55b28"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.160.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "e37896bfe972aebf832c542e377955ae153384b3755830cf7d882f0940e2c997"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.160.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "6198371f45a1e330c189dc6e1a4836f995c59f4ce9e7d64b95e41876bb7d64e8"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

