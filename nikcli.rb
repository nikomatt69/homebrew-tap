# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-10T00:15:30.028Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.150.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.150.0/nikcli-ai-darwin-x64.zip"
      sha256 "263e80a9fcb0ea0afa85166766ebf1d0393a47b47a91fef2866ca3f3cf054402"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.150.0/nikcli-ai-darwin-arm64.zip"
      sha256 "0cd80d31e97612701156ab058828604cb2bf16b6a50a25c4ddb329d06dadd6be"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.150.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "35484b2161bc3ae434bad8c5de61059e8ffda9c774adde7ca47559335ada3a14"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.150.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "529452e53ee899c053abc224b560d3f405b1ee7d3478ec7e265397cf171e9926"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

