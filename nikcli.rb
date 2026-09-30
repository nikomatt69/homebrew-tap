# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-30T01:44:28.785Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.414.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.414.0/nikcli-ai-darwin-x64.zip"
      sha256 "4ea1fb8e6670928335d5cfb0d45cbb6d28fce5b8d465e1baac499b6a0c2a3d39"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.414.0/nikcli-ai-darwin-arm64.zip"
      sha256 "98e2830a43fa2777122359568e46b74fdf259c9d206ac3d4a3cdb7fd1b5ce10c"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.414.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "98dbbad3efed0f5c1b402b2ef701c8268a14d4952bf27b0fbcb053ae3310878a"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.414.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "c789a493f767abb173467d2f64ff6f6cf879f50d68e284b32e28d169b5608544"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

