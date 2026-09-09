# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-09T16:42:14.718Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.331.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.331.0/nikcli-ai-darwin-x64.zip"
      sha256 "ea55c05da4ffcd5d30a762a1f2e206d5fd491b911ff526f58d70488a9e6e6138"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.331.0/nikcli-ai-darwin-arm64.zip"
      sha256 "098ea0d6a71d3a4b06d759c143b4ea7ec8f42b9984a339452efb18970f39799c"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.331.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "08ffc3ea10f99cc85ee923d86962a98ab7dd0aba33a82302a099f324a86d39a8"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.331.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "4e249a78b73d969753c74f56e1ef39d7eafbd9530aa18ba0902b4b6beadfe480"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

