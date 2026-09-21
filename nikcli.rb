# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-21T19:49:13.325Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.384.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.384.0/nikcli-ai-darwin-x64.zip"
      sha256 "92e02bf6cd1ebacf1841ae280f21818d45e97c1c9adf0b2d0c5987f45b758a15"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.384.0/nikcli-ai-darwin-arm64.zip"
      sha256 "942ca95161e9c2f38fa905cb4249ddc7637f30b16d0f659888d4d76dfb15f81f"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.384.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "a63be2b75e781c826045741bb3b7f99f9300b0f289bbda8eaf10c66039ee26ed"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.384.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "6469bb36a6bf67a91136cfc66e21e993cd6c1ef1f9038cd73c76399469745834"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

