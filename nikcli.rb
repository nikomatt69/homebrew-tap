# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-22T22:51:16.528Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.106.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.106.0/nikcli-ai-darwin-x64.zip"
      sha256 "8918d816cc5aa874b30d1f60e3d61ae942d3f0b5ca3ecca27cf2efbd3575e246"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.106.0/nikcli-ai-darwin-arm64.zip"
      sha256 "82a9b9643e66821ded1d99fbbf8936fcf148cc7a7b05e9da37b87389dbc91410"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.106.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "bbdfddc68ab06de0b671e8106cc5c99becab5e4b9e7b4989aec07140acc8ad90"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.106.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "0cbe8aaf10ab1cd4b5e4edc00c4309b3cf5d090f7b97d10cd3d263035e668844"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

