# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-28T23:56:25.580Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.209.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.209.0/nikcli-ai-darwin-x64.zip"
      sha256 "fce0264441d2fcb530d489fbf6af77a7b3598827a5cf1f3a5665ec3d91339605"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.209.0/nikcli-ai-darwin-arm64.zip"
      sha256 "2e31e6c0cc58b56eb52eb6945c7dad10a127e2b467c5f4470880537c04a9fb5b"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.209.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "4302e512998dc59a0cac336d8f74c4e3d46ab01765b9f172171658da39ae7393"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.209.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "3367c650d28e41652c0b0ab689a68a70c1c99f4b72297c2df07245e733dbf99d"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

