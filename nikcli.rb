# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-12T23:32:00.621Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.72.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.72.0/nikcli-ai-darwin-x64.zip"
      sha256 "b7224fa5ba5969b66ecf3b24ae27a51addd01feadbfc53451f54ab3c65ac6c17"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.72.0/nikcli-ai-darwin-arm64.zip"
      sha256 "771c771489d8a55cd485f21c1ecd428e399641e5d6c9459aa213497e7d64e2dd"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.72.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "7170b02f1fbbc55b7a41b7b40c390602b2236dc20a77e5f712975d73384f5d26"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.72.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "dde29321860e00d812c26f189266bf565104a27745a5ecb2461a4d68c7ddc10b"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

