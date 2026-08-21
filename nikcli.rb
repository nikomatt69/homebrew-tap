# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-21T16:44:30.120Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.305.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.305.0/nikcli-ai-darwin-x64.zip"
      sha256 "ff5558998e3d7b70a44ed1f1b8943ec33f1cb05b6e43800041c4194d43d91f4c"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.305.0/nikcli-ai-darwin-arm64.zip"
      sha256 "e260bfb41f6b942e783fb55dcefed5c370dda2b0eff2fc0370ccb2a3082d7af4"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.305.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "621cea81f19c70419635bbd62ee4f92eaeef8dde24d708ad1c228ef96f38d58b"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.305.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "04ed5a737a1500f8aae8bf0a20b099b6fb30e4ccc9b76615b03e3155e856ec27"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

