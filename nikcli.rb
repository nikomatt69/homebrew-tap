# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-22T13:29:15.182Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.98.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.98.0/nikcli-ai-darwin-x64.zip"
      sha256 "43c9cfaf6cda0b0a13047d86f1dec6a0120126c93cf6c87a449af5f205923fc6"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.98.0/nikcli-ai-darwin-arm64.zip"
      sha256 "7be720b087b987016d1b6a18fd6516b51873b229c0c46374d94850a433843a3a"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.98.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "531d280224913345bca68c410edbe5075cf9c8d526cf0d5ebaeac7933cd61d10"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.98.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "0da4fb726541e13092471fb33a8d2216ed042164537499a3aeb06ff7f9418942"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

