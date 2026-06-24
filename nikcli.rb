# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-24T19:37:24.144Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.113.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.113.0/nikcli-ai-darwin-x64.zip"
      sha256 "8c0afda361e39b0f10103a8afc2bd228a067579a4fa6eed677f234404b1fb571"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.113.0/nikcli-ai-darwin-arm64.zip"
      sha256 "065e48be6a87261afd722ad7f119df01e4e93e6d0b234e60ed5ea649a86afbdc"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.113.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "dfed8bb7e2506f272d5245b72cb9cd1ddfef6d9ae617024c5a743c688e92c39d"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.113.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "8a90b30afce4d3b378889181b951715a8c5326619503830b98855c8b55e6894d"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

