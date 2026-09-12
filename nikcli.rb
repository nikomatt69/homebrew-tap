# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-12T18:10:35.712Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.350.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.350.0/nikcli-ai-darwin-x64.zip"
      sha256 "bb75dfda00b1be9889b23eda511715d34450c6eebf056e334ea011ea315ec4b5"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.350.0/nikcli-ai-darwin-arm64.zip"
      sha256 "5a23ffb7741ae9aef34be9dd5152ad4c5d4c7e3508309f8b61802edf5f81f1cb"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.350.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "e492d2ad221fe469a9e77a6195e4b172c5c22788b5c6a55292c0b79d0bfdd6d3"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.350.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "b739ecf9e52ed7fb7f73f4bbdcae394fcbaf9ef9ed847c81e22e9caa98e6fc9e"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

