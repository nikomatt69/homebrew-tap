# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-25T20:55:27.927Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.120.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.120.0/nikcli-ai-darwin-x64.zip"
      sha256 "edbc2329e9224006bb7b9eb4cc074e49af9d3bcb8fae298f5cd956ed628c2c5c"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.120.0/nikcli-ai-darwin-arm64.zip"
      sha256 "64a7ce853b8cac7cf3ed800ccb3edaaa84901822ef80764323e5cea24995e563"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.120.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "2294578fe21601b5800e9dbf04c6b64cc749aae3216c132cd0ad9fe67ab8b7e4"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.120.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "64ac202dd3ffe94b3b9859c88020d07f0f4c556d4a2a70888eb9677837b78d1b"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

