# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-13T03:38:56.609Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.280.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.280.0/nikcli-ai-darwin-x64.zip"
      sha256 "5eb51ed2acc1644d7ed2dbb1777b4fb3545dc831c4d063975a127e2c03c1e02f"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.280.0/nikcli-ai-darwin-arm64.zip"
      sha256 "8e792ecf22142730db2b9bc19ab251f728ff718d7b289be78ee2022c3ccd83eb"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.280.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "1588a204b046a077dfc540cdec1d2c7ad8f556388a995a1da1cf7df53e75d0b3"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.280.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "5d8c06e510bd9bbc5a6493aa150a801e858b81bb2328355f8ea5b5f9754a86b7"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

