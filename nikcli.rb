# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-30T23:49:35.233Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.419.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.419.0/nikcli-ai-darwin-x64.zip"
      sha256 "f6220e2ca110463105d137c4e5bf28d494bfcec93f46dfc30a8327b7b1296dbb"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.419.0/nikcli-ai-darwin-arm64.zip"
      sha256 "a677e869ccda564aadf20907c4bfa51f138f25092ba5740ac4a7ee096380ab8b"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.419.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "f341861950d0d3245a1c8f9e9bab0c67718d09775bf23c9a31209b04d814fb57"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.419.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "7211f90a108752641f5722b3ffbd8aebd2f26859f71d85a7d46e3644349931ec"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

