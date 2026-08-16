# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-16T02:54:06.936Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.286.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.286.0/nikcli-ai-darwin-x64.zip"
      sha256 "1b39c2927b5096ab0c6a79519351ca7f9e02bf37673dbdd1abe13636bafacd84"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.286.0/nikcli-ai-darwin-arm64.zip"
      sha256 "60be2c2971e411d3a9dd32a7fc1d3a5f817f912ceea03c9aed2ebf1437887700"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.286.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "694cf3815f6fafb7136653af0c15327b16a4c7759f544ccddd03e6e2b2d66f74"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.286.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "8cf79d26177f7e2085d6c9c72392620ff9ca6d785d905ca30ed6ef0c246b0c9d"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

