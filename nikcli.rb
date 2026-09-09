# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-09T23:10:54.970Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.335.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.335.0/nikcli-ai-darwin-x64.zip"
      sha256 "353a9718ea7141f104596b592a9c7008b5a0845bb369869619ba65b9d1a40883"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.335.0/nikcli-ai-darwin-arm64.zip"
      sha256 "1446d49346fd277bf734f35054bb9df214cc8dcf1406f127aa36cd0f32b67a34"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.335.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "98c5200eb3af094f32c7d904096d238f20330c96ef5c8f4120e81180b099ce2d"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.335.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "62650ea06bb725decfceab40e83b4d75db827760df567551dc4f88d6c8708241"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

