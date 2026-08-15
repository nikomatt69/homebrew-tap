# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-15T16:19:16.530Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.285.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.285.0/nikcli-ai-darwin-x64.zip"
      sha256 "6e20a5d42bb17f10113675fbe807f7605c7ddc2012ed61aeb3729a4b7c511167"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.285.0/nikcli-ai-darwin-arm64.zip"
      sha256 "19e957a4d75a8162216284e66026dd98e30564ba27200b2101016ecba3fb3a63"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.285.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "512169750ac8354cdbdc4c7d87ee9c777e44685b38f9103eee9d58bf10710858"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.285.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "17896fc8fb2622fdb26dc99d4e1cf9e87844680df7e7de202ce451d8b1f238ad"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

