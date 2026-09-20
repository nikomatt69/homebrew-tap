# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-20T19:35:17.771Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.378.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.378.0/nikcli-ai-darwin-x64.zip"
      sha256 "0d6bb1f62b6faf44138eb5a4ae05452d5f7c2e8e5fe035f95387cdc47d15459f"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.378.0/nikcli-ai-darwin-arm64.zip"
      sha256 "b60ef1e86aaf14d2ad62ed5958ec079b79f5f7b9b48b832c2b8c8395da936e0e"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.378.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "446bccaaac0ce3cd98a98bf6b9e4b7f12d31a7c5bc30c83fe1f5e2abcebb7bbc"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.378.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "e443858bfb39b233a9118161d22b7e56f59c95aa95a47af20739b8fd31883f18"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

