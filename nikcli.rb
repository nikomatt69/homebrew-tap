# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-10T21:21:06.287Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.63.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.63.0/nikcli-ai-darwin-x64.zip"
      sha256 "b3e305a556881a23d9a06ceeefac0704ae0972131564e1b4e382990eabffd3a5"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.63.0/nikcli-ai-darwin-arm64.zip"
      sha256 "4abb1e9c9d6539d08faf63665ff494f6ce9d4938a6a8c79646f75a8619929084"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.63.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "99edecbd9a77ee0d5a71801b1a9260fd87f56128a60bdad7738c8f31097649da"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.63.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "10e44a961a46a030e115c473b81fc2eabd117d4ded296bc76da47936292e65e4"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

