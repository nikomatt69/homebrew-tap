# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-07T17:25:06.297Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.145.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.145.0/nikcli-ai-darwin-x64.zip"
      sha256 "5b8c32f1c5f63739316d292480d3590b421c642499dee42fb721b8c014e8eec5"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.145.0/nikcli-ai-darwin-arm64.zip"
      sha256 "ff491bf42d6ee273894dfa17456692c39350212168d4675584eddd3370a5d016"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.145.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "b23435682bd89c8c9c9db17bd8086a3bb3e8b5dadbf24790ef5ff33a9b73f28d"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.145.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "5c0df5f3101dd30debf5f93439bfbf94d9a3188fa84f577671668a51eb427b32"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

