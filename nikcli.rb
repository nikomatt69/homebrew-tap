# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-15T13:51:37.054Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.357.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.357.0/nikcli-ai-darwin-x64.zip"
      sha256 "fad3ab7948c7d4576f76a09cf26b96cee6c4d4d0384f96a768dc10b76d91b609"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.357.0/nikcli-ai-darwin-arm64.zip"
      sha256 "582a475fbc84558e810ac57480d6f4b2d61c3e03eee15c7df2c6fd4a8539aa1d"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.357.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "da36b441a4837aba098ddf19429f23befa7b2e072df59d7feab109b3eaed5250"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.357.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "affc84b36ea09f53207be5f1aace1bbd9878d01fa0749471a83a5c57982a53ed"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

