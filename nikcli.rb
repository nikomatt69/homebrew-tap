# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-02T15:35:44.937Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.137.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.137.0/nikcli-ai-darwin-x64.zip"
      sha256 "d92bee4d3f7dc6214d3cbc12bfb8467c67463ebffd5ebf48aff2de0c3bc49bdb"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.137.0/nikcli-ai-darwin-arm64.zip"
      sha256 "0eb20c8b8f03a01a068d97965686908a58ff29a311f40bcaed88bffc0c00edd0"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.137.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "2eebb509ab3dd578278bd01260153aba2739c3656e53fa69c5f697c812fb1355"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.137.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "08619e3d4188aa118f522bbe054dbcaace7a9b40df2a6f8beb5368a63d5fffbb"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

