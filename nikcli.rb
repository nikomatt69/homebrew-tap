# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-27T00:22:59.367Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.401.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.401.0/nikcli-ai-darwin-x64.zip"
      sha256 "53288bb4ea1fc73e68f7e253ce6ed9d3d241087d9183e5476f999e387398cd74"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.401.0/nikcli-ai-darwin-arm64.zip"
      sha256 "87356abc0ea5f8f620b75837c81e6c16da76187c6e3abd4c8a31581c4e3e29da"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.401.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "43d705c8aca8bde9c138c13cd4c137f8e0e059532a0c3b4200c3a581c1863ad3"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.401.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "23ae2e18e7902dd404a77b4a0ed8b3ad39f3531617f22c3b94b3695581d4ffe3"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

