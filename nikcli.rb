# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-22T22:49:58.568Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.390.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.390.0/nikcli-ai-darwin-x64.zip"
      sha256 "98bdc5db7194fa50ec12c3a47699551a9e4d8dd94012dd294e96a80fbd04421b"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.390.0/nikcli-ai-darwin-arm64.zip"
      sha256 "bb9cd44e0c560bd35c356326cf7b890dfae94949d354971b8e6dff50d3ee2a85"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.390.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "777db09696298f6e9ad29e9896d266cd79ce0d8346338ffb80164ce807b63ec6"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.390.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "38de1e0b01c4c8a027fa184c3928056183ba56e0b705125d1c6d5a6ac6d183f4"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

