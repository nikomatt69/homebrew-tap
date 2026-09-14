# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-14T17:28:12.575Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.353.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.353.0/nikcli-ai-darwin-x64.zip"
      sha256 "6f86df5692b52c6970718da0d8dc0918a9f17eb4763d4f5d188c7ad1a81ddc04"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.353.0/nikcli-ai-darwin-arm64.zip"
      sha256 "4a794350fa07fccc90dd4edc64c6e2e9443ac711e6f67c8925c55ac4a141080f"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.353.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "9f1849aa148d8c54f572db6a9b689f5c3ea5d6748f956cc37a56c69e593befbd"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.353.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "1af290e73dcf492f6f763dc64362401e2e1c0ed2b9c63e78f512da175105a567"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

