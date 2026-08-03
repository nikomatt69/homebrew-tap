# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-03T03:27:07.307Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.229.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.229.0/nikcli-ai-darwin-x64.zip"
      sha256 "220ab9a4bf8c295f86bb54427b170e9588a2a914d81e536567b08a7e6c2123ef"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.229.0/nikcli-ai-darwin-arm64.zip"
      sha256 "e5320384ce1d6ca3aa175d207000e6fbbe8c36bf09642c78a3400d0fb90c3b2e"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.229.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "c7db2103864d4e84135c01391fefbea481086c36a317235b607c8003873e6d1f"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.229.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "94954c313d5772779d6238d4a327868c5c8b0a1905ece0de79668f004b20077d"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

