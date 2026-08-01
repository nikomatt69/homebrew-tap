# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-01T15:32:08.167Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.225.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.225.0/nikcli-ai-darwin-x64.zip"
      sha256 "57a6c043be1f2990db052c9e518934963ee204abf2c93da76303f83a44453927"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.225.0/nikcli-ai-darwin-arm64.zip"
      sha256 "a2d342d30a2155d65b574a9aa3b4aae064ee7ec8a52ca68e86e75daeceb53461"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.225.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "89bbd5298b6935b7c2dd4c93cac41c9d7dbe4f782f79a8ff5ac133733c677d76"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.225.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "1efb7825a39436bd4d4b808f1a1f778eb9fa87f3bc0a015435a5f23955f02dde"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

