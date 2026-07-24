# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-24T18:01:16.821Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.199.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.199.0/nikcli-ai-darwin-x64.zip"
      sha256 "afd61ae4f8d385c0f7e7853cd0c999e78f0629854ce49ba6365e96d6691beaad"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.199.0/nikcli-ai-darwin-arm64.zip"
      sha256 "fb3df2d80ad5dc00a9262c65e2dd32050c64483bfe789c5079f5539b4ce55f0c"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.199.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "e4e7174f9e0f59ffca8588cc49f1ff971d4588af77c7fa308196c8f41727d099"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.199.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "00ceac0e8eb66cd8aa2bf23f3ad12888f67b76b10a2437dc3b08ee9a29f1a637"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

