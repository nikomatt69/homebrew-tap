# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-22T21:54:03.897Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.389.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.389.0/nikcli-ai-darwin-x64.zip"
      sha256 "034607aa6ee9c73233f7f8d0ca7a3a0e574c8e525f5884dc77ec306ffdbb3d28"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.389.0/nikcli-ai-darwin-arm64.zip"
      sha256 "f4722b5b0ca624afb9ccbae7258df6a66eff51fa05a7eedd756c8ac482e70794"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.389.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "0e9f849c7428a313ca2119b51b8e93cd5af15cf78a0029c5e686cda84791ef39"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.389.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "274c6da80e8fc2ea7bd86f5662aa6a506777c49182e3296c318428a3a2f7703e"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

