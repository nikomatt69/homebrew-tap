# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-29T23:15:42.129Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.131.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.131.0/nikcli-ai-darwin-x64.zip"
      sha256 "fd5b6016b22a37b3fb5a33821aa17c42b7102b17ad85e893f31c8d518a702e34"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.131.0/nikcli-ai-darwin-arm64.zip"
      sha256 "1960c31f778d1f9f767254c2518734e0e6a811f48926124437b50e304a52e917"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.131.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "c07c5067ea4ba70c6f101379c5e72f064feee17fe8a0a3c6b3470b14297044e6"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.131.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "320f032a7dfa04825859bab243e236f314ae2e959e29f5cf8deef374dec3eefe"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

