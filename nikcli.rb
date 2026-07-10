# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-10T15:22:28.067Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.154.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.154.0/nikcli-ai-darwin-x64.zip"
      sha256 "554f4ff566da5adadba6f2ddde3c94411eba7c90c2979ccf9cde53a4e2d74049"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.154.0/nikcli-ai-darwin-arm64.zip"
      sha256 "d7aaa600edb54ce633d5fda2e2675d814195b936cf6e002727046e82a0a379bc"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.154.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "eb9585ab4115b113265e612582e61551e07dac165da227cf61a0e410d187f1d4"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.154.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "b39f324d5a68bfa4c191d9ceccbb4b90590b68c1405a22f2a7f7c47ca954bb9b"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

