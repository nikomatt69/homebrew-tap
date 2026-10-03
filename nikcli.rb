# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-10-03T21:13:44.745Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.425.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.425.0/nikcli-ai-darwin-x64.zip"
      sha256 "ac8fef1ebb5edd9d27a8ad1b223f0cb34e0961aaab37ce938d84a7ad76eedd4f"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.425.0/nikcli-ai-darwin-arm64.zip"
      sha256 "6cf17297b9c049ca35e35cea2fccf064459f5e3761750730020465c2d9b60981"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.425.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "b4e06b0d4a418ddd1588cd52dd22843f8ec0e03a2f0221c0dbb45680ff8989bd"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.425.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "c5021b197a74531c7cd5c04b548f5081dfeaeb4628739acaa836121afd09cb23"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

