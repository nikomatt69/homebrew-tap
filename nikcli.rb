# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-14T23:22:52.857Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.167.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.167.0/nikcli-ai-darwin-x64.zip"
      sha256 "673a6604e418f0b6209988f2d2e1e1522651297d27b89fe0c3893ca1f2d99273"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.167.0/nikcli-ai-darwin-arm64.zip"
      sha256 "10315d9fb068cb9b546540d5936f37971d3c34cef6f9984a3201b9e7181f77f3"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.167.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "568eb7d7ec0feea8def92721c88eebcf98e532d68a950958105dbf4a38fa126d"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.167.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "0551621aea741c684ab2afb63b9a594c7e5ca8e8f4f787ec760f25513bdee16f"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

