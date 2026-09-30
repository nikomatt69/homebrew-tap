# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-30T15:10:49.862Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.417.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.417.0/nikcli-ai-darwin-x64.zip"
      sha256 "4215d9e047fa52e2a7c3eed10811e6c148d3a1a516092a36f1d7a41681a5b5a5"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.417.0/nikcli-ai-darwin-arm64.zip"
      sha256 "1c5ff54fb23e3ba0eafe31ca5d1d0b6bb22fa1c037b3af91b19b32e69432fe12"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.417.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "563d87535d05ed90d10bd38ec9caa898d442214b356caef6a9236c5b583b9114"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.417.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "9f21689c503a5407eb69fb6c8814c490d3699f83d290ecaf1e2f936cbc931dbd"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

